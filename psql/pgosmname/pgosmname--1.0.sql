-- pg osm name EXTENSION 
create index ON_name_idx on planet_osm_point using gist (name gist_trgm_ops);


create function ON_test_place_1(text) returns table(place text) as $$
 select name from planet_osm_point where place is not null and name % $1;
 $$ LANGUAGE SQL;

create function ON_test_top10(text) returns table(ort text,sim real) as $$
 select distinct name,similarity(name,$1) from planet_osm_point where name % $1 order by similarity(name,$1) desc limit 10;
 $$ LANGUAGE SQL;
 

 
 