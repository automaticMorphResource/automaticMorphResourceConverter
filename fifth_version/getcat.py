fp = open("extraconcrete.txt", "r")
lines = fp.readlines()
for line in lines:
	lhs = line.split("=")[0].strip()
	lm, cat = lhs.split("_")[0], lhs.split("_")[-1]
	if cat == 'adj':
		print lm