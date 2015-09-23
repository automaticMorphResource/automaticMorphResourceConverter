from bs4 import BeautifulSoup


def main():

    fp = open('../apertium_grammars/apertium_hn.dix', 'r')

    xml = fp.read()
    soup_xml = BeautifulSoup(xml, "xml")
    section = soup_xml.find('section')
    entries = section.find_all('e')

    for entry in entries:
        par = entry.find('par')
        if ("/" in par['n']) and ("_" in par['n']):
            lemma = entry['lm']
            category = par['n'].split('_')[-1]
            if (category != 'sh'):
                pardigm = par['n']
                right = pardigm.split("/")[1].split("_")[0]
                if right != "":
                    rightLen = len(right)
                    if right != lemma[-1*rightLen:]:
                        print lemma, pardigm
    pass


if __name__ == '__main__':
    main()
