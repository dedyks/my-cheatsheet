#!/bin/bash

SCRIPT_PATH="/usr/local/openvpn_as/scripts"
OUTPUT=$("$SCRIPT_PATH" VPNSummary)

echo $OUTPUT
