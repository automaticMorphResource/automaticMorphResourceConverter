from bs4 import BeautifulSoup
from collections import defaultdict

glArg = 0


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


def createTable(definitions, types, index, flag):

    global glArg
    if len(types) == index:
        glArg += 1
        if flag == 0:
            return 's' + str(glArg) + ';\n'
        else:
            return 's' + str(glArg) + '\n'
    else:
        s = 'table {\n'
        l = len(definitions[types[index]])
        counter = 0
        for eachvalue in definitions[types[index]]:
            if counter == l-1:
                s += eachvalue + ' => ' + createTable(definitions, types, index+1, flag=1)
            else:
                s += eachvalue + ' => ' + createTable(definitions, types, index+1, flag=0)
            counter += 1
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
        if idx+1 == l:
            storePardef.append(eachpardef)
    counter = 1
    for each in storePardef[3:]:
        #print each
        values = getSValues(each, definitions, types=['Case', 'Gen', 'Num'])
        replace = each['n'].split('/')[1].split('_')[0]
        name = each['n'].split('/')[0]
        name += replace + '_' + each['n'].split("/")[1].split("_")[2]
        functionDeclaration = name + ': Str -> { s : Case => Gen => Num => Str } = \s -> case s of {\n'
        functionBody = 'a + "' + replace + '" => mkFunc ' + ' '.join(['(a+"' + x + '")' for x in values]) + '\n};\n'
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
    print createTable(definitions, types=['Tam', 'Per', 'Case', 'Gen', 'Num'], index=0, flag=0)

if __name__ == '__main__':
    main()
