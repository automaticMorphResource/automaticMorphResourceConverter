from itertools import izip

fp = open("some1", "r")
fq = open("some2", "r")

lines = fp.read().strip().split('\n')
lt = []
for i in lines:
	lt.append(i.split("/"))

lines = fq.read().strip().split("\n\n")
gf = []
for i in lines:
	gf.append(i.split("\n"))

print len(lt), len(gf)
for count,(elt,egf) in enumerate(izip(lt,gf)):
	lt_len = len(elt)
	gf_len = len(egf)
	if lt_len == 2:
		lt_len = 1
                if "<" not in elt[1]:
                    #print count+1
                    pass
	if gf_len < lt_len:
		for i in elt:
			if '<cat:sh>' in i:
				#	print 'sh', count+1
				break
			if '<cat:vn>' in i:
				if gf_len + 2 >= lt_len:
					break
		else:
			print count+1
                        pass
