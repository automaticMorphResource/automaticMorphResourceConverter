# add new variation as vaMti

while ($line=<>){

$line=~s/^([A-z]*)llAMti\/([A-z]*)llAti\/([A-z]*)llAMti\/([A-z]*)llAti/$1llAMti\/$2llAti\/$1lavaMti\/$3llAMti\/$4llAti\/$3lavaMti/g;
$line=~s/^([A-z]*)([^l])lAMti\/([A-z]*)([^l])lAti\/([A-z]*)([^l])lAMti\/([A-z]*)([^l])lAti/$1$2lAMti\/$3$4lAti\/$1$2vaMti\/$5$6lAMti\/$7$8lAti\/$5$6vaMti/g;

$line=~s/^([A-z]*)llAMti\/([A-z]*)llAti$/$1llAMti\/$2llAti\/$1lavaMti/g;
$line=~s/^([A-z]*)([^l])lAMti\/([A-z]*)([^l])lAti$/$1$2lAMti\/$3$4lAti\/$1$2vaMti/g;

print $line;


}
