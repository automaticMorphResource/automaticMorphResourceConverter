from bs4 import BeautifulSoup
from updated_library import *
from collections import defaultdict, OrderedDict


def main():

    #   fileContent = open('../apertium_grammars/apertium_hn.dix', 'r')
    fileContent = open('./apertium_ori_new1.dix', 'r')
    soupXml = BeautifulSoup(fileContent, 'xml')
    definitions = createParameters(soupXml)
    text = 'resource temp = {\nparam\n'
    for key, value in definitions.iteritems():
        text += key.title() + ' = ' + ' | '.join(value) + ' ;\n'

    text += '\noper\n'

    omitList = ['cat']
    paradigms = soupXml.find_all('pardef')
    for index, each_paradigm in enumerate(paradigms):
        types = getTypes(each_paradigm)
        text += createFunction(each_paradigm, types, index)
    text += '\n};\n'

    print text
if __name__ == '__main__':
    main()
