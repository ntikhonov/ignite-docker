#!/bin/bash

JVM_OPTS="-Xms${1}m -Xmx${1}m -server -XX:+AggressiveOpts -XX:MaxPermSize=256m"

if [[ $2 = "amazon" ]]; then
   if [ -z $3 ]; then
      echo "Accsess key isn't passed!"
      exit 1
   fi

   if [ -z $4 ]; then
      echo "Secret key isn't passed!"
      exit 1
   fi

   JVM_OPTS=$JVM_OPTS AWS_ACCESS_KEY=$3 AWS_SECRET_KEY=$4 ./bin/ignite.sh ignite-ec2-config.xml
else
   JVM_OPTS=$JVM_OPTS ./bin/ignite.sh
fi

exit 0
