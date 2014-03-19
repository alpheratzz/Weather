#!/bin/sh
. $PWD/pogoda.conf

while (true)
do
	#if [ -f $PAGEFILE ]; then rm $PAGEFILE; fi
	wget -t 1 -O $PAGEFILE http://www.gismeteo.by/weather-minsk-4248/
	grep -m 1 "value m_temp c" $PAGEFILE > tmp
	echo "It's " $(sed 's/[^\-\+0-9]//g' temp) "°C in Minsk now"
	rm tmp
done