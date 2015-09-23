from bs4 import BeautifulSoup


def main():
    fp = open('../apertium_grammars/apertium_hn.dix', 'r')
    xml = fp.read()
    soupXML = BeautifulSoup(xml, 'xml')
    section = soupXML.find('section')
    entries = section.find_all('e')
    lexicon = {}
    refDic = {'n': 'Noun', 'adj': 'Adj', 'v': 'Verb', 'p': 'Pronoun'}

    exceptions = list()
    fq = open('exceptions.txt', 'r')
    for line in fq.readlines():
        line = line.replace('\n', '')
        lemma, pardigm = line.split(" ")
        cat = pardigm.split("_")[-1]
        exceptions.append((lemma, cat))

    for entry in entries:
        par = entry.find('par')
        if ("/" in par['n']) and ("_" in par['n']):
            lemma = entry['lm']
            category = par['n'].split('_')[-1]
            if category != 'sh' and ((lemma, category) not in exceptions):
                trim1 = par['n'].replace('/', '')
                trim2 = trim1.replace('__', '_')
                paradigm_table = trim2

                variable = lemma + '__' + category

                if variable not in lexicon:
                    lexicon[variable] = paradigm_table

            #   print '\t\t' + lemma + '__' + category + ':', refDic[category], ';'

    for key, value in lexicon.iteritems():
        print '\t\t' + key, '=', value, '"' + key.split('_')[0] + '"', ';'

    pass

if __name__ == '__main__':
    main()
