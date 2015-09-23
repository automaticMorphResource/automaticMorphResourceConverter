from collections import OrderedDict

fp = open('paradigmtable_common_nouns.txt', 'r')

all_paradigmtables = fp.read()

tables_list = all_paradigmtables.split("\n\n")

#	Remove Extra Space at starting on each paradigm table
temp = []
for each_table in tables_list:
	temp.append(each_table.strip())
tables_list = temp

refined_tables_list = list(OrderedDict.fromkeys(tables_list))

#	print refined_tables_list
for each_table in refined_tables_list:
	print each_table+'\n'