perl $setu/bin/sys/common/printinput.pl $1 > morphinput
perl $setu/bin/sys/common/deletesentencetag.pl < morphinput > morph-temp1
perl $setu/bin/sl/morph/tel/remove_zwj.pl < morph-temp1 > morph-temp

## NEW CONVERTORI 1.4.5 030311
# 1.4.7  150311
# 1.4.8  020111
perl $setu/bin/sys/common/convertor-indic-1.4.8/convertor_indic.pl -f=ssf -l=tel -s=utf -t=wx -i=morph-temp -o=morph-splitin
##perl $setu/bin/sys/common/convertor/convertor.pl --path=$setu/bin/sys/common/convertor --stype=ssf --slang=tel -s utf -t wx < morph-temp >morph-splitin

perl $setu/bin/sl/morph/tel/word-split.pl < morph-splitin > morph-splitout
$setu/bin/sl/morph/tel/morph.out --pdgmfilepath $setu/data_bin/sl/morph/tel/ --uwordpath $setu/data_bin/sl/morph/tel/dict_tel --dictfilepath $setu/data_bin/sl/morph/tel -ULDWH --in=morph-splitout --out=morphoutput
perl $setu/bin/sl/morph/tel/cat-change.pl < morphoutput > morphoutput2
perl $setu/bin/sys/common/printinput.pl morphoutput2
