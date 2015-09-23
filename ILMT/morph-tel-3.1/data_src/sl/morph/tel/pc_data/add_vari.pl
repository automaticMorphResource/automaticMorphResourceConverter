while ($line=<>){

$line=~s/^([A-z]*)lAMti\/(.*)lAti/$1lAMti\/$2lAti\/$1vaMti/g;
print $line;


}
