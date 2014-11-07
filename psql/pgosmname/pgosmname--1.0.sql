-- pg osm name EXTENSION 
create index ON_name_idx on planet_osm_point using gist (name gist_trgm_ops);

create function ON_top10(text) returns table(ort text,sim real) as $$
 select distinct name,similarity(name,$1) from planet_osm_point where name % $1 order by similarity(name,$1) desc limit 10;
 $$ LANGUAGE SQL;
 
