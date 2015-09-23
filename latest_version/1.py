import re

open("test_utf8", "w").write('\n'.join(re.split( "\n| ", open("Odia_Output1.txt", "r").read())))
