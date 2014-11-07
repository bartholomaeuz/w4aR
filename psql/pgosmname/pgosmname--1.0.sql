-- pg osm name EXTENSION 
create index ON_name_idx on planet_osm_point using gist (name gist_trgm_ops);


create  or replace function ON_test_place_2(text) returns table(place text) as $$
 select name from planet_osm_point where place is not null and name % $1;
 $$ LANGUAGE SQL;

create or replace function ON_test_place_1(text) returns table(ort text,sim real) as $$
 select distinct name,similarity(name,$1) from planet_osm_point where place is not null and name % $1 order by similarity(name,$1) desc;
 $$ LANGUAGE SQL;
 

 
 