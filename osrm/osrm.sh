# !!!!1.Zuerst testen!!!!
# mado@hamina.fh-joanneum.at (PW:w6s46KB)
# !!!!2.Danach deployen!!!!
# mado@malta.fh-joanneum.at (PW:w6s46KB)
# cd Project-OSRM
# run: sudo osrm.sh 
# besser Kommandos einzeln mit SUDO ausführen

echo "### DELETE: Austria OSM"
rm austria-latest.osm.pbf 
echo "### DOWNLOAD: Austria OSM"
wget http://download.geofabrik.de/europe/austria-latest.osm.pbf
echo "###LIST OSRM PROCESS (Malta)"
pgrep osrm
echo "###KILL OLD OSRM PROCESS (Malta)"
pkill osrm
echo "### EXTRACT DATA (WAIT approx. 15 min)"
./osrm-extract austria-latest.osm.pbf
echo "### PREPARE DATA (WAIT approx. 1h 15 min)"
./osrm-prepare austria-latest.osrm
# date +%s > austria-latest.osrm.timestamp (once needed)
echo "### RUN OSRM PROCESS (in background &)"
./osrm-routed &

# OSRM Files sollten von HAMINA auf MALTA kopiert werden
# pkill osrm    # @malta
# scp austria-latest.osrm* mado@malta:/home/mado/Project-OSRM
# sudo ./osrm-routed &   # @malta

# check links
# http://hamina.fh-joanneum.at/mado
# http://malta.fh-joanneum.at/mado

# Profile (profile.lua) -> Priority of roads, naming schema
# Server Settings (server.ini) -> Files, Port 