#!/usr/local/bin/perl
$inFile="test";
open IN, "<$inFile" or die$!;
$outFile="ptest";
open OUT, ">$outFile" or die$!;
my @linesIn=<IN>;
for($i=0;$i<=1;$i++){
print OUT"$linesIn[$i]" or die$!;
}
if($linesIn[2]){
@line2=split(/\s+/,$linesIn[2]);
$line2[1]="8.5800000000000000";
print OUT"    $line2[1]    $line2[2]    $line2[3]\n" or die$!;
}
if($linesIn[3]){
@line3=split(/\s+/,$linesIn[3]);
$line3[2]="17.160000000000000";
print OUT"    $line3[1]    $line3[2]    $line3[3]\n" or die$!;
}
if($linesIn[4]){
@line4=split(/\s+/,$linesIn[4]);
$line4[3]=$line2[1];
print OUT"    $line4[1]    $line4[2]    $line4[3]\n" or die$!;
}
for($i=5;$i<=169;$i++){
print OUT"$linesIn[$i]" or die$!;
}
close (IN);
close (OUT);
