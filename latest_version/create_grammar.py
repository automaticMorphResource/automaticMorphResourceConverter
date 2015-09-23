from bs4 import BeautifulSoup

refDic = {'n': 'Noun', 'adj': 'Adj', 'v': 'Verb', 'p': 'Pronoun', 'v2': 'Verb2'}
verb2 = ['he','So', 'SukA', 'aC', 'WA', 'dez']
f = open('apertium_ori_new1.dix', 'r')
xmlSoup = BeautifulSoup(f.read())

section = xmlSoup.section

es = section.find_all('e')

lm = []
for e in es:
	par = e.find('par')
	if "/" in par['n']:
		cat = par['n'].split('_')[-1]
		para_rootword = par['n'].split('_')[0].replace('/','')
		ocat = cat
		if "SuKA" in para_rootword:
			cat = 'v2'
			ilm = e['lm'] + '__' + 'v2'
		elif cat == 'v' and (para_rootword in verb2):
			cat = 'v2'
			ilm = e['lm'] + '__' + 'v2'
		else:
			ilm = e['lm'] + '__' + cat	
		if ilm not in lm:
			lm.append(ilm)
			rootp = par['n'].split('_')[0].replace('/','') + '_' + ocat
		#	print ilm+':', refDic[cat]+';'
			print ilm + ' = ' + rootp + ' "' + ilm.split('_')[0] + '";'