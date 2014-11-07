#PG OSM NAME
====

##INSTALL EXTENSION PG OSM NAME
>sudo make install

##psql
>create extension pg_trgm;
>
>create extension pgosmname;

##remove
>drop index ON_name_idx
>
>drop extension pgosmname cascade;

##example queries
> select on_test_place_1('apfenberg') limit 10;
>
> select name from on_test_place_3('Bruck an Mur') limit 5;

## git
git clone https://bartholomaeuz:pwd@github.com/bartholomaeuz/w4aR.git

