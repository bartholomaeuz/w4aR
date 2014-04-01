# !!!!1.Zuerst testen!!!!
# mado@hamina.fh-joanneum.at (PW:w6s46KB)
# !!!!2.Danach deployen!!!!
# mado@malta.fh-joanneum.at (PW:w6s46KB)
# run: sudo osrm.sh 
# besser Kommandos einzeln mit SUDO ausführen
 
echo "### START"
#cd Project-OSRM
echo "### DOWNLOAD: Austria OSM"
wget http://download.geofabrik.de/europe/austria-latest.osm.pbf
echo "###KILL OLD OSRM PROCESS"
pkill osrm
echo "### EXTRACT DATA (WAIT approx. 10 min)"
./osrm-extract austria-latest.osm.pbf
echo "### PREPARE DATA (WAIT approx. 1 h 15 min)"
./osrm-prepare austria-latest.osrm
# date +%s > austria-latest.osrm.timestamp (needed 1x)
echo "### RUN OSRM PROCESS"
./osrm-routed &

# OSRM Files können auch von HAMINA auf MALTA kopiert werden
scp austria-latest.osrm* mado@malta:/home/mado/Project-OSRM