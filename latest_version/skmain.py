from bs4 import BeautifulSoup
from generalized_library import *
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
    for index, each_paradigm in enumerate(paradigms[4:]):
        types = getTypes(each_paradigm)

        ss = each_paradigm.find_all('s')
        tmp_def = defaultdict(list)
        present_types = set()
        for eachs in ss:
            typ, value = eachs['n'].split(':')[0], eachs['n'].split(':')[1]
            if typ not in ['cat']:
                value = typ + '_' + value
                if value not in tmp_def[typ]:
                    tmp_def[typ].append(value)
                present_types.add(typ)

        for typ in tmp_def:
            if len(definitions[typ]) > len(tmp_def[typ]):
                tmp_def[typ].append('_')        
        #   print list(present_types)
#        for k,v in tmp_def.iteritems():
#            print k,v
        text += createFunction(each_paradigm, tmp_def, list(present_types), index)
    text += '\n};\n'
    print text
if __name__ == '__main__':
    main()
