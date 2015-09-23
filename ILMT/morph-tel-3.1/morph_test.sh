#perl $setu/bin/sys/common/printinput.pl $1 > morphinput
#perl $setu/bin/sys/common/deletesentencetag.pl < morphinput > morph-temp
#perl $setu/bin/sys/common/convertor/convertor.pl --path=$setu/bin/sys/common/convertor --stype=ssf --slang=tel -s utf -t wx < morph-temp >morphinput1
source ~/sampark/bin/sys/tel_tam/tel_tam.sh
#perl $setu/bin/sl/morph/tel/word-split.pl < $1 > $1.in
rm $1.mo
$setu/bin/sl/morph/tel/morph.out --pdgmfilepath $setu/data_bin/sl/morph/tel/ --uwordpath $setu/data_bin/sl/morph/tel/dict_tel --dictfilepath $setu/data_bin/sl/morph/tel -ULDWH --in=$1 --out=$1.mo
#cat $1.mo
#$setu/bin/sl/morph/tel/morph.out --pdgmfilepath $setu/data_bin/sl/morph/tel/ --uwordpath $setu/data_bin/sl/morph/tel/dict_tel --dictfilepath $setu/data_bin/sl/morph/tel -ULDWH --in=$1.in 
#perl $setu/bin/sl/morph/tel/cat-change.pl < $1.in1 > $1.out
#rm $1.in $1.in1
##rm $1.in
 #perl $setu/bin/sys/common/printinput.pl morphoutput2
