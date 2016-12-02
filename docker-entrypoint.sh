#!/bin/sh
if [ -z "$cluster_key" ]; then
        echo "Please add your cluster key"
        exit
   else
        eval $(curl -s https://portal.cloudhero.io/bootstrap/$cluster_key/script | sh) 
   fi
cat /etc/motd
/bin/sh 
