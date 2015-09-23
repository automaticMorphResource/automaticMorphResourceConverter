from bs4 import BeautifulSoup
from collections import defaultdict, OrderedDict

glArg = 0
glVerbArgs = OrderedDict()


def createParameters(soupXml, resultText):
    sdefs = soupXml.sdefs.find_all('sdef')
    definitions = defaultdict(list)

    for sdef in sdefs:
        #   definitionName = sdef['c']
        definitionType, definitionNotation = tuple(sdef['n'].split(':'))
        #   if definitionType not in ['fnum', 'per', 'tam', 'cat', 'parsarg']:
        if definitionType not in ['fnum', 'cat', 'parsarg']:
            definitions[definitionType.title()].append(definitionNotation.upper())

    text = resultText + 'param\n'
    for dType, dNotations in definitions.iteritems():
        text += '\t' + dType + ' = ' + ' | '.join(dNotations) + ' ;\n'

    return text, definitions


def createTable(definitions, index, defvar, types, flag):

    global glArg
    global glVerbArgs

    if len(types) == index:
        glArg += 1
        glVerbArgs[tuple(defvar)] = ''
        if flag == 0:
            return 's' + str(glArg) + ';\n'
        else:
            return 's' + str(glArg) + '\n'
    else:
        s = 'table {\n'
        counter = 0     # 'counter' is used to set 'flag' variable
        if types[index] == '_':
            defvar.append('_')
            s += '_' + ' => ' + createTable(definitions, index+1, defvar, types, flag=1)
            del defvar[-1]
        else:
            l = len(definitions[types[index]])
            for eachvalue in definitions[types[index]]:
                defvar.append(eachvalue)
                if counter == l-1:
                    if eachvalue == 'ADJ_WA_HUA' or eachvalue == 'ADJ_YA_HUA':
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, ['Tam', '_', 'Case', 'Gen', 'Num'], flag=1)
                    elif index == 0:
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, ['Tam', 'Per', '_', 'Gen', 'Num'], flag=1)
                    else:
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, types, flag=1)
                else:
                    if eachvalue == 'ADJ_WA_HUA' or eachvalue == 'ADJ_YA_HUA':
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, ['Tam', '_', 'Case', 'Gen', 'Num'], flag=0)
                    elif index == 0:
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, ['Tam', 'Per', '_', 'Gen', 'Num'], flag=0)
                    else:
                        s += eachvalue + ' => ' + createTable(definitions, index+1, defvar, types, flag=0)
                counter += 1
                del defvar[-1]
        if flag == 0:
            s += '};\n'
        else:
            s += '}\n'
    return s


def createCoreFunctions(definitions, resultText, types):
    totalArg = 1
    for eachType in types:
        totalArg = totalArg * len(definitions[eachType])

    functionDeclaration = 'mkFunc: ' + ' '.join(['Str ->' for i in range(1, totalArg+1)]) + ' { s : ' + ' '.join([i + ' =>' for i in types]) + ' Str } = \n'
    functionbody = '\\' + ','.join(['s'+str(i) for i in range(1, totalArg+1)]) + ' -> {\n'
    functionbody += 's = ' + createTable(definitions, types, index=0, flag=0)
    function = functionDeclaration + functionbody

    resultText += function
    return resultText


def getSValues(pardef, definitions, types):
    args = [['D', 'M', 'S'], ['D', 'M', 'P'], ['D', 'F', 'S'], ['D', 'F', 'P'], ['O', 'M', 'S'], ['O', 'M', 'P'], ['O', 'F', 'S'], ['O', 'F', 'P']]
    values = ["", "", "", "", "", "", "", ""]
    for row in pardef.find_all('e'):
        #   print row.find('l'),row.find('r')
        s = row.find_all('s')
        tmp = list()
        for i in s:
            tmp.append(i['n'].split(':')[1].upper())
        values[args.index(tmp[1:])] = row.find('l').text
    return values


def getVerbValues(pardef, definitions, types):
    global glVerbArgs
    for row in pardef.find_all('e')[2:]:
        #   print row.find('l'),row.find('r')
        s = row.find_all('s')
        s.reverse()
        tmp = list()
        for i in s:
            tmp.append(i['n'].split(':')[1].upper())
        s = tmp
        if s[0] == 'ADJ_YA_HUA' or s[0] == 'ADJ_WA_HUA':
            argtuple = (s[0], '_', s[1], s[3], s[2])
        else:
            argtuple = (s[0], s[1], '_', s[3], s[2])
        if argtuple in glVerbArgs:
            glVerbArgs[argtuple] = row.find('l').text
        else:
            print 'No', argtuple
    return glVerbArgs


def createBasicFunctions(soupXml, definitions, resultText, types):

    pardefs = soupXml.pardefs.find_all('pardef')

    storePardef = list()
    for eachpardef in pardefs:
        sSet = set(eachpardef.find_all('s'))
        l = len(sSet)
        for idx, each in list(enumerate(sSet)):
            typ = each['n'].split(':')[0]
            if typ.title() in types:
                continue
            else:
                break
        if idx+1 == l and idx+1 >= 5:
            storePardef.append(eachpardef)
    print storePardef
    counter = 1
    for each in storePardef[3:]:
        #   print each
        values = getSValues(each, definitions, types=['Case', 'Gen', 'Num'])
        replace = each['n'].split('/')[1].split('_')[0]
        name = each['n'].split('/')[0]
        name += replace + '_' + each['n'].split("/")[1].split("_")[2]
        functionDeclaration = name + ': Str -> { s : Case => Gen => Num => Str } = \s -> case s of {\n'
        functionBody = 'a + "' + replace + '" => mkFunc ' + ' '.join(['(a+"' + x + '")' for x in values]) + '\n};\n'
        counter += 1
        resultText += functionDeclaration + functionBody
    return resultText


def createVerbBasicFunctions(soupXml, definitions, resultText):

    pardefs = soupXml.pardefs.find_all('pardef')

    storePardef = list()
    for eachpardef in pardefs:
        if eachpardef['n'].split("_")[-1] == 'v':
            storePardef.append(eachpardef)
    counter = 1
    for each in storePardef:
        #   print each
        #   values = getSValues(each, definitions, types=['Case', 'Gen', 'Num'])
        values = getVerbValues(each, definitions, types=['Tam', 'Per', 'Case', 'Gen', 'Num'])
        replace = each['n'].split('/')[1].split('_')[0]
        name = each['n'].split('/')[0]
        name += replace + '_' + each['n'].split("/")[1].split("_")[2]
        functionDeclaration = name + ': Str -> { s : Tam => Per => Case => Gen => Num => Str } = \s -> case s of {\n'
        #   functionBody = 'a + "' + replace + '" => mkFunc ' + ' '.join(['(a+"' + x + '")' for x in values]) + '\n};\n'
        functionBody = 'a + "' + replace + '" => mkFunc ' + ' '.join(['(a+"' + v + '")' for k, v in values.iteritems()]) + '\n};\n'
        counter += 1
        resultText += functionDeclaration + functionBody
    return resultText


def main():
    fileContent = open('apertium_hn.dix', 'r')
    soupXml = BeautifulSoup(fileContent, 'xml')
    resultText = 'resource temp = {\nflags\tcoding=utf8 ;\n'

    resultText, definitions = createParameters(soupXml, resultText)

    resultText += 'oper\n'
    #   resultText = createCoreFunctions(definitions, resultText, types=['Case', 'Gen', 'Num'])
    resultText += '};\n'

    #   resultText = createBasicFunctions(soupXml, definitions, resultText, types=['Case', 'Gen', 'Num', 'Cat'])
    resultText += '\n};\n'
    #   print resultText
    print createTable(definitions, index=0, defvar=[], types=['Tam', 'Per', 'Case', 'Gen', 'Num'], flag=0)
    #   for k,v in glVerbArgs.iteritems():
    #       print k, v
    print createVerbBasicFunctions(soupXml, definitions, '')

if __name__ == '__main__':
    main()
