# This program produces a file with uniq key that is required for dbm 
$_ = <STDIN>;
$_ =~ /"([^"]+)","(.*)"/;

$prev1 = $1;
$prev2 = $2;
while(<STDIN>)
{
$cur = "\"".$prev1."\",\"".$prev2;
$_ =~ /"([^"]+)","(.*)"/;
$next1 = $1;
$next2 = $2;
while($prev1 eq $next1) 
{
$cur = $cur."#".$next2;
$_ = <STDIN>;
$_ =~ /"([^"]+)","(.*)"/;
$next1 = $1;
$next2 = $2;
}
print  $cur,"\"\n";
$cur="";
$prev1 = $next1;
$prev2 = $next2;
}
print "\"",$next1,"\",\"",$next2,"\"\n";