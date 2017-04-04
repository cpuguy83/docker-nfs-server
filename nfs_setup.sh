#!/bin/bash

set -e

mounts="${@}"

echo "#NFS Exports" > /etc/exports

for mnt in "${mounts[@]}"; do
  src=$(echo $mnt | awk -F':' '{ print $1 }')
  mkdir -p $src
  echo "$src *(rw,sync,no_subtree_check,fsid=0,no_root_squash)" >> /etc/exports
done

exec runsvdir /etc/sv
