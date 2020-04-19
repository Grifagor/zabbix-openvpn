#!/bin/bash

path=/var/log/openvpn-status.log

echo "{"
echo "\"data\":["
comma=""

a="OpenVPN CLIENT LIST"
b="Updated"
c="Common Name"
d="ROUTING TABLE"

        while read line ; do

          IFS=","

          set -- $line

          case $1 in
                  $a)
                          continue
                  ;;
                  $b)
                          continue
                  ;;
                  $c)
                          continue
                  ;;
                  $d)
                          break
                  ;;
                  *)
                  echo $1

          esac
        
        done < $path

echo "]"
echo "}"
