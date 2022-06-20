#! /bin/bash

scschosts=`cat hosts | grep scsc`

for scschost in $scschosts; do
    echo -n $scschost: MISP:
    echo yes | openssl s_client -host $scschost -port 443 1> /dev/null 2> /dev/null ; echo $?

    echo -n $scschost: OpenSearch:
    echo yes | openssl s_client -host $scschost -port 8443 1> /dev/null 2> /dev/null ; echo $?

    echo -n $scschost: Portainer:
    echo yes | openssl s_client -host $scschost -port 9443 1> /dev/null 2> /dev/null ; echo $?

    echo --------
done
