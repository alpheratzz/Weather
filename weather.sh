#!/bin/sh
. $PWD/pogoda.conf

while (true)
do
	wget -t 1 -O $PAGEFILE http://www.gismeteo.by/weather-minsk-4248/
done