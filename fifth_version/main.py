from bs4 import BeautifulSoup
from library import createParameters, createCoreFunctions, createBasicFunctions


def main():
    fileContent = open('./apertium_hn.dix', 'r')
    soupXml = BeautifulSoup(fileContent, 'xml')
    resultText = 'resource temp = {\nflags\tcoding=utf8 ;\n'

    resultText, definitions = createParameters(
        soupXml, resultText, omitList=[])

    nounDef = ['Case', 'Gen', 'Num']
    verbDef = ['Tam', 'Per', 'Case', 'Gen', 'Num']
    pronounDef = ['Tam', 'Parsarg', 'Fnum', 'Per', 'Case', 'Gen', 'Num']
    problemVerbDef = ['adj_wA_huA', 'adj_yA_huA']
    resultText += 'oper\n'
    resultText, tables = createCoreFunctions(
        definitions, resultText, types=[nounDef, verbDef, pronounDef], problemLists=[[], problemVerbDef, []])
    resultText += '\n\n\n'
    patterngroups = [['n', 'adj', 'sh'], ['v'], ['p']]
    resultText = createBasicFunctions(
        soupXml, definitions, patterngroups, tables, resultText)
    resultText += '}\n'
    print resultText

if __name__ == '__main__':
    main()
