#!/bin/sh

CONTAINER_ALREADY_STARTED="1"
if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- Provisioning container for first startup --"

    echo "-- Provisioning node 6001 --"
    mkdir 6001
    tar -xvf redis.tar -C 6001
    cd 6001
    make
    cd ..
    cp redis.conf 6001/

    for i in 6002 6003 6004 6005 6006
	do
        echo "-- Provisioning node $i --"
        mkdir "$i"
    	cp -r 6001/* "$i"
    	cp redis.conf "$i"
    	sed -i "s/6001/$i/g" "$i/redis.conf"
	done

	/usr/bin/supervisord
else
	/usr/bin/supervisord
fi