#! /usr/bin/perl -w

use DBI;

print "Hallo Marki\n";

$dhb = DBI->connect("dbi:Pg:dbname=pgr","pgr","pgr");

print "Connected\n";
$sth = $dhb->prepare("select count(*) from spatial_ref_sys");

$rows = $sth->execute();
($num) = $sth->fetchrow_array();

print "Rows: $rows : $num  \n";


