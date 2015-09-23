fp = open('gfHin.txt','r')

#   For noun
lines = fp.readlines()
for line in lines:
    line = line.strip()
    lhs = line.split("=")[0].strip()
    cat = lhs.split('_')[-1]
    if cat == 'N':
        rhs = line.split("=")[-1].strip()
        hindi_word = rhs.split(" ")[1]
        mkfunction = rhs.split(" ")[0]
        if mkfunction != "mkCmpdNoun":
            #   print lhs, hindi_word
            print hindi_word.replace('"','')