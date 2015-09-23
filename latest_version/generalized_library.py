from collections import defaultdict, OrderedDict
from itertools import izip

argCounter = 0
tableDic = OrderedDict()
creating = 1


def createParameters(soupXml):
    sdefs = soupXml.sdefs.find_all('sdef')  # sdefs: Symbol Definitions
    definitions = defaultdict(list)

    for sdef in sdefs:
        definitionType, definitionNotation = tuple(sdef['n'].split(':'))
        definitions[definitionType].append(definitionType+'_'+definitionNotation)
    return definitions

def getTypes(paradigm):
    stags = paradigm.find_all('s')
    types = list()
    for each_tag in stags:
        types.append(each_tag['n'].split(':')[0])
    types = list(set(types))
    del(types[types.index('cat')])
    return types

def createTable(definitions, types, defvar, index, flag):

    global argCounter
    global tableDic
    global creating
    #   print 'Entering createTable'
    if len(types) == index:
        argCounter += 1
        tableDic[tuple(defvar)] = '--'
        if flag == 0:
            return 's' + str(argCounter) + ';\n'
        else:
            return 's' + str(argCounter) + '\n'
    else:
        s = 'table {\n'
        counter = 0     # 'counter' is used to set 'flag' variable
        l = len(definitions[types[index]])
        for eachvalue in definitions[types[index]]:
            defvar.append(eachvalue)
            s += ''.join(['\t' for i in range(0, len(defvar))])

            if counter == l-1:
                semicolFlag = 1
            else:
                semicolFlag = 0
         
            s += eachvalue + ' => '
            s += createTable(definitions, types, defvar, index+1, semicolFlag)

            counter += 1
            del defvar[-1]
        
        if flag == 0:
            s += ''.join(['\t' for i in range(0, len(defvar))])
            s += '};\n'
        else:
            s += ''.join(['\t' for i in range(0, len(defvar))])
            s += '}\n'
    return s


def createFunction(paradigm, definitions, types, count):
    #   print 'entering createCoreFunction'
    global argCounter
    global tableDic
    global creating

    #   print 'calling createTableFunction'    
    table = createTable(definitions, types, defvar=[], index=0, flag=0)
    #   print 'create Table Success'
    argumentsList = ['Str ->' for i in range(1, argCounter+1)]
    resultVariable = ' { s : ' + ' '.join([i.title() + ' =>' for i in types]) + ' Str } '
    
    functionDeclaration = 'mkFunc' + str(count+1) + ': ' + ' '.join(argumentsList) + resultVariable + ' = \n'
    functionBody = '\\' + ','.join(['s'+str(i) for i in range(1, argCounter+1)]) + ' -> {\n'
    functionBody += 's = ' + table
    coreFunction = functionDeclaration + functionBody + '};\n\n\n'
    
    tables = tableDic
    argCounter = 0
    tableDic = OrderedDict()
    #   print coreFunction

    elements = paradigm.find_all('e')
    for each_element in elements:
        alls = each_element.find_all('s')
        tmpdict = OrderedDict()
        for i in types:
            if i not in ['cat']:
                tmpdict[i] = '_'
            if i in ['neg']:
                tmpdict[i] = 'neg_y'
        for i in alls:
                element_type, value = i['n'].split(':')
                if element_type not in ['cat']:
                    tmpdict[element_type] = element_type + '_' + value
            
        values = tmpdict.values()
        if tuple(values) in tables:
            tables[tuple(values)] = each_element.find('l').text
        else:
            print 'NO', tuple(values)

    #   Basic Function
    if len(paradigm['n'].split('/')) == 2:
        replace = paradigm['n'].split('/')[1].split('_')[0]
        name = paradigm['n'].split('/')[0]
        name += replace + '_' + paradigm['n'].split("/")[1].split("_")[-1]
    elif len(paradigm['n'].split('/')) == 1:
        replace = paradigm['n'].split('/')[0].split('_')[0]
        name = replace + '_' + paradigm['n'].split("/")[0].split("_")[-1] 

    title_types = []
    for i in types:
        title_types.append(i.title())

    functionDeclaration = name + ': Str -> { s : ' + ' => '.join(title_types) + ' => Str } = \s -> case s of {\n'
    functionBody = 'var + "' + replace + '" => mkFunc' + str(count+1) + ' ' + ' '.join(['(var+"' + v + '")' for k,v in tables.iteritems()]) + '\n};\n\n\n'
    basicFunction = functionDeclaration + functionBody   


    return coreFunction+basicFunction