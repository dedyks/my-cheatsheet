#!/bin/bash

SCRIPT_PATH="/Users/md712idb/web-project/my-cheatsheet/openvpn-log/script.sh"
OUTPUT=$("$SCRIPT_PATH")
var1="${OUTPUT//{}"
var2="${OUTPUT//}"
echo $OUTPUT
echo $var1

/usr/local/openvpn_as/scripts
