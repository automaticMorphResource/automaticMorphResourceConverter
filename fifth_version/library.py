from collections import defaultdict, OrderedDict
from itertools import izip

argCounter = 0
tableDic = OrderedDict()
creating = 1


def createParameters(soupXml, resultText, omitList):
    sdefs = soupXml.sdefs.find_all('sdef')  # sdefs: Symbol Definitions
    definitions = defaultdict(list)

    for sdef in sdefs:
        definitionType, definitionNotation = tuple(sdef['n'].split(':'))
        if definitionType not in omitList:
            definitionType = definitionType.title()
            #   Below IF Loop is present to avoid conflict that arise because of using same parmeter constructor
            if definitionType == 'Tam' and definitionNotation == '0':
                definitionNotation = 'zero'
            elif definitionType == 'Parsarg' and definitionNotation == '0':
                definitionNotation = 'zero1'
            elif definitionType == 'Per' and definitionNotation == 'm':
                definitionNotation = 'ma'
            elif definitionType == 'Fnum':
                definitionNotation = 'f' + definitionNotation
            elif definitionType == 'Cat' and definitionNotation == 'p':
                definitionNotation = 'prn'
            definitions[definitionType].append(definitionNotation)

    text = resultText + 'param\n'
    for dType, dNotations in definitions.iteritems():
        text += '\t' + dType + ' = ' + ' | '.join(dNotations) + ' ;\n'

    return text, definitions


#   ** Recursive Func. **
def createTable(definitions, types, problemList, defvar, index, flag):

    global argCounter
    global tableDic
    global creating

    if len(types) == index:
        argCounter += 1
        tableDic[tuple(defvar)] = '-1'
        if flag == 0:
            return 's' + str(argCounter) + ';\n'
        else:
            return 's' + str(argCounter) + '\n'
    else:
        s = 'table {\n'
        counter = 0     # 'counter' is used to set 'flag' variable
        if types[index] == '_':
            defvar.append('_')
            s += ''.join(['\t' for i in range(0, len(defvar))])
            s += '_' + ' => ' + createTable(definitions, types, problemList, defvar, index+1, flag=1)
            del defvar[-1]
        else:
            l = len(definitions[types[index]])
            for eachvalue in definitions[types[index]]:
                defvar.append(eachvalue)
                s += ''.join(['\t' for i in range(0, len(defvar))])

                if counter == l-1: semicolFlag = 1
                else: semicolFlag = 0

                s += eachvalue + ' => '
                if creating == 1:
                    if eachvalue in problemList:
                        s += createTable(definitions, ['Tam', '_', 'Case', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                    elif types[index] == 'Tam':
                        s += createTable(definitions, ['Tam', 'Per', '_', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                    else:
                        s += createTable(definitions, types, problemList, defvar, index+1, flag=semicolFlag)
                elif creating == 2:
                    if types[index] == 'Tam':
                        if eachvalue == 'zero':
                            s += createTable(definitions, ['Tam', '_', '_', 'Per', 'Case', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                        else:
                            s += createTable(definitions, ['Tam', 'Parsarg', 'Fnum', 'Per', 'Case', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                    elif types[index] == 'Parsarg':
                        if eachvalue == 'kA':
                            s += createTable(definitions, ['Tam', 'Parsarg', 'Fnum', 'Per', 'Case', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                        else:
                            s += createTable(definitions, ['Tam', 'Parsarg', '_', 'Per', 'Case', 'Gen', 'Num'], problemList, defvar, index+1, flag=semicolFlag)
                    else:
                        s += createTable(definitions, types, problemList, defvar, index+1, flag=semicolFlag)
                counter += 1
                del defvar[-1]
        if flag == 0:
            s += ''.join(['\t' for i in range(0, len(defvar))])
            s += '};\n'
        else:
            s += ''.join(['\t' for i in range(0, len(defvar))])
            s += '}\n'
    return s


def createCoreFunctions(definitions, resultText, types, problemLists):
    global argCounter
    global tableDic
    global creating
    tables = list()
    for count, (eachtype, problemList) in enumerate(izip(types, problemLists)):
        defs = eachtype
        if count == 2:
            creating = 2
            tmpdefinitions = definitions
            tmpdefinitions['Tam'] = ['zero', '_']
            table = createTable(tmpdefinitions, defs, problemList, defvar=[], index=0, flag=0)
            #   for k,v in tableDic.iteritems():
            #       print k,v
        else:
            table = createTable(definitions, defs, problemList, defvar=[], index=0, flag=0)
        argumentsList = ['Str ->' for i in range(1, argCounter+1)]
        resultVariable = ' { s : ' + ' '.join([i + ' =>' for i in defs]) + ' Str } '
        funcDeclaration = 'mkFunc' + str(count+1) + ': ' + ' '.join(argumentsList) + resultVariable + ' = \n'
        funcBody = '\\' + ','.join(['s'+str(i) for i in range(1, argCounter+1)]) + ' -> {\n'
        funcBody += 's = ' + table
        func = funcDeclaration + funcBody + '};\n'
        tables.append(tableDic)
        argCounter = 0
        tableDic = OrderedDict()
        resultText += func
    return resultText, tables


def getParameters(pardef, definitions, table, index):
    if index == 2:
        for row in pardef.find_all('e'):
            s = row.find_all('s')
            tmpdef = {}
            for i in s:
                [k,v] = i['n'].split(':')
                tmpdef[k] = v
            if 'per' not in tmpdef: tmpdef['per'] = 'm'
            if tmpdef['per'] == 'm': tmpdef['per'] = 'ma'

            if 'tam' in tmpdef and tmpdef['tam'] == '0':
                argtuple = ('zero', '_', '_', tmpdef['per'], tmpdef['case'], tmpdef['gen'], tmpdef['num'])
            else:
                if tmpdef['parsarg'] == '0': tmpdef['parsarg'] = 'zero1'  
                if tmpdef['parsarg'] == 'kA':
                    argtuple = ('_', tmpdef['parsarg'], 'f'+tmpdef['fnum'], tmpdef['per'], tmpdef['case'], tmpdef['gen'], tmpdef['num'])
                else:
                    argtuple = ('_', tmpdef['parsarg'], '_', tmpdef['per'], tmpdef['case'], tmpdef['gen'], tmpdef['num'])

            if argtuple in table:
                table[argtuple] = row.find('l').text
                #   print 'Yes', argtuple
            else:
                print 'No', argtuple
    elif index == 1:
        for row in pardef.find_all('e')[2:]:
            #   print row.find('l'),row.find('r')
            s = row.find_all('s')
            s.reverse()
            tmp = list()
            for i in s:
                tmp.append(i['n'].split(':')[1])
            s = tmp
            if s[0] == 'adj_wA_huA' or s[0] == 'adj_yA_huA':
                argtuple = (s[0], '_', s[1], s[3], s[2])
            else:
                if s[1] == 'm' : s[1] = 'ma'
                if s[0] == '0' : s[0] = 'zero'
                argtuple = (s[0], s[1], '_', s[3], s[2])

            if argtuple in table:
                table[argtuple] = row.find('l').text
                #   print 'Yes', argtuple
            else:
                print 'No', argtuple
    elif index == 0:
        for row in pardef.find_all('e'):
            s = row.find_all('s')
            tmp = list()
            for i in s[1:]:
                tmp.append(i['n'].split(':')[1])
            s = tmp
            argtuple = (s[0], s[1], s[2])

            if argtuple in table:
                table[argtuple] = row.find('l').text
                #   print 'Yes', argtuple
            else:
                print 'No', argtuple
    return table


def createBasicFunctions(soupXml, definitions, categories, tables, resultText):
    for index, (category, table) in enumerate(izip(categories, tables)):
        storePardef = list()
        pardefs = soupXml.pardefs.find_all('pardef')
        for eachpardef in pardefs:
            if eachpardef['n'].split("_")[-1] in category:
                storePardef.append(eachpardef)
        for counter, each in enumerate(storePardef):
            for k, v in table.iteritems():
                table[k] = '-1'
            values = getParameters(each, definitions, table, index)
            replace = each['n'].split('/')[1].split('_')[0]
            name = each['n'].split('/')[0]
            name += replace + '_' + each['n'].split("/")[1].split("_")[2]
            if index == 0:
                functionDeclaration = name + ': Str -> { s : Case => Gen => Num => Str } = \s -> case s of {\n'
            elif index == 1:
                functionDeclaration = name + ': Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {\n'
            elif index == 2:
                functionDeclaration = name + ': Str -> { s : Tam => Parsarg => Fnum => Per => Case => Gen => Num => Str } = \s -> case s of {\n'
            variables = []
            for k, v in values.iteritems():
                if v == '-1':
                    variables.append('"' + '--' + '"')
                else:
                    variables.append('(var+"' + v + '")')
            #    functionBody = 'var + "' + replace + '" => mkFunc' + str(index+1) + ' ' + ' '.join(['(var+"' + v + '")' for k, v in values.iteritems()]) + '\n};\n'
            functionBody = 'var + "' + replace + '" => mkFunc' + str(index+1) + ' ' + ' '.join(variables) + '\n};\n'
            resultText += functionDeclaration + functionBody
    return resultText
