select name from planet_osm_line where name != '' and st_distance((select way from planet_osm_line where name like 'Höllhammerweg'),way) < 100;
