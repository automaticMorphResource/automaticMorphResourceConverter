from itertools import izip

fp = open('refinedparadigmtable_common_nouns_utf8.txt', 'r')
tables = fp.readlines()

fq = open('temp_wx_words.txt', 'r')
wx_words = fq.readlines()

newtables = []
for entry, wx_word in izip(tables, wx_words):
	if entry != '\n':
		variables = entry.split(':')[0]
		new_entry = variables + ': ' + wx_word
		newtables.append(new_entry)
	else:
		newtables.append('\n')

for i in newtables:
	print i,