#!/bin/bash

# Create logs directory if not exists
mkdir -p logs

OUTPUT="logs/audit_$(date +%Y%m%d_%H%M%S).log"

{
echo "================================="
echo "        SYSTEM AUDIT REPORT      "
echo "================================="
echo ""
echo "Generated on: $(date)"
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo ""

echo "----- UPTIME -----"
uptime
echo ""

echo "----- MEMORY -----"
free -h
echo ""

echo "----- DISK USAGE -----"
df -h
echo ""

echo "----- IP ADDRESS -----"
hostname -I
echo ""

echo "----- KERNEL VERSION -----"
uname -r
echo ""

echo "----- TOP 5 MEMORY PROCESSES -----"
ps aux --sort=-%mem | head -n 6
echo ""

echo "Report saved successfully."
} > "$OUTPUT"

echo "Audit completed. File saved as $OUTPUT"
