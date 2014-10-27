CREATE OR REPLACE FUNCTION public.top10(text)
 RETURNS TABLE(ort text, sim real)
 LANGUAGE sql
AS $function$
 select distinct name,similarity(name,$1) from planet_osm_point where name % $1 order by similarity(name,$1) desc limit 10;
 $function$
