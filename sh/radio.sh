#!/bin/sh
echo "SEL:"
read sel
while [ "$sel" != "q" ]
do
case $sel in
	a) wget -q -O- http://89.207.144.68:8080/live | madplay -a -20 - ;;
	s) wget -q -O- http://212.48.110.149:8000 | madplay -R 44100 -a -20 - ;;
	h) wget -q -O- http://89.106.208.33:8088/live96.mp3 | madplay -R 44100 -a -20 - ;;
	*) 
	echo "command unknown"
	echo "a....Antenne"
	echo "s....Soundportal"	
	echo "h....Radio Helsinki"
	echo "q....Quit"
esac
echo "SEL:"
read sel
done