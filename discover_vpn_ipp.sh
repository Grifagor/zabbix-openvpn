#!/bin/bash

path=/etc/openvpn/ipp.txt # path to ifconfig-pool-persist file

echo "{"
echo "\"data\":["
comma=""

  while read  line ; do
  IFS=","
  set -- $line
  user=$1
  echo "    $comma{\"{#VPNUSER}\":\"$user\"}"
      comma=","
  done < $path

echo "]"
echo "}"
