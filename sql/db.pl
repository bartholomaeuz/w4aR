#! /usr/bin/perl -w

use DBI;

$dhb = DBI->connect("dbi:Pg:dbname=pgr","pgr","pgr");

print "Connected\n";
$sth = $dhb->prepare("select st_asgeojson(w.the_geom) FROM pgr_dijkstra('
                SELECT gid AS id,
                         source::integer,
                         target::integer,
                         length::double precision AS cost
                        FROM ways',
                294, 91, false, false) p,ways w where p.id2 = w.gid;");

$rows = $sth->execute();
print "rows: $rows \n";

$sth->bind_columns(\$json);
while($sth->fetch()) {
	print "$json \n";
}


