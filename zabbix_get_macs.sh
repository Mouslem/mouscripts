#!/bin/bash

# Interface name
DEV="br103"

# Extract MAC addresses and join them with commas
MACS=$(ip neigh show dev "$DEV" | awk '{print $3}' | grep -E '^[0-9a-f:]{17}$' | paste -sd, -)

echo "$MACS"

