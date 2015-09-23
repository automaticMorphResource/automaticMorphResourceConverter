from itertools import izip

refDic = {'d': 'Dir', 'o': 'Obl', 's': 'Sg', 'p': 'Pl'}

fp = open('created_hindi_grammar/refinedparadigmtable_common_nouns.txt', 'r')
mytables = fp.read().split('\n\n')
fq = open('gf_hindi_grammar/refinedparadigmtable_common_nouns_wx.txt', 'r')
gftables = fq.read().split('\n\n\n\n')

result = {'yes' : [], 'no' : []}
for index, (mytable, gftable) in enumerate(izip(mytables, gftables)):
	if mytable != '' and gftable != '':
		myentries = mytable.split('\n')
		gfentries = gftable.split('\n')
		if '--' in myentries[0]:
			my_Sg_Dir = myentries[2].split(':')[-1].strip()
			gf_Sg_Dir = gfentries[0].split(':')[-1].strip().replace('oz', 'oM')
			my_Sg_Obl = myentries[6].split(':')[-1].strip()
			gf_Sg_Obl = gfentries[1].split(':')[-1].strip().replace('oz', 'oM')
			my_Pl_Dir = myentries[3].split(':')[-1].strip()
			gf_Pl_Dir = gfentries[3].split(':')[-1].strip().replace('oz', 'oM')
			my_Pl_Obl = myentries[7].split(':')[-1].strip()
			gf_Pl_Obl = gfentries[4].split(':')[-1].strip().replace('oz', 'oM')
		else:
			my_Sg_Dir = myentries[0].split(':')[-1].strip()
			gf_Sg_Dir = gfentries[0].split(':')[-1].strip().replace('oz', 'oM')
			my_Sg_Obl = myentries[4].split(':')[-1].strip()
			gf_Sg_Obl = gfentries[1].split(':')[-1].strip().replace('oz', 'oM')
			my_Pl_Dir = myentries[1].split(':')[-1].strip()
			gf_Pl_Dir = gfentries[3].split(':')[-1].strip().replace('oz', 'oM')
			my_Pl_Obl = myentries[5].split(':')[-1].strip()
			gf_Pl_Obl = gfentries[4].split(':')[-1].strip().replace('oz', 'oM')
		#print my_Sg_Dir, gf_Sg_Dir
		#print my_Sg_Obl, gf_Sg_Obl
		#print my_Pl_Dir, gf_Pl_Dir
		#print my_Pl_Obl, gf_Pl_Obl
		if (my_Sg_Dir == gf_Sg_Dir) and (my_Sg_Obl == gf_Sg_Obl) and (my_Pl_Dir == gf_Pl_Dir) and (my_Pl_Obl == gf_Pl_Obl):
			result['yes'].append(index)
		else:
			result['no'].append(index)
for k,v in result.iteritems():
	print k
	for i in v:
		print i,
	print