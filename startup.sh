#!/bin/bash

JVM_OPTS="-Xms${1}m -Xmx${1}m -server -XX:+AggressiveOpts -XX:MaxPermSize=256m"

IGNITE_TCP_DISCOVERY_ADDRESSES=$2 JVM_OPTS=$JVM_OPTS ./bin/ignite.sh ignite-mesos-config.xml
