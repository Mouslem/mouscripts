#!/bin/bash

# Interface name
DEV="br103"

# Count total REACHABLE + STALE entries
TOTAL_COUNT=$(ip neigh show dev "$DEV" | grep -E "REACHABLE|STALE" | wc -l)

echo "$TOTAL_COUNT"

