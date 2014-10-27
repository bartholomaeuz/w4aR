select name from planet_osm_line where st_intersects(( select way from planet_osm_line where name like 'Höllhammerweg') , way );
