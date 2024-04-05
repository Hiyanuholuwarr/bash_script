#!/bin/bash
echo "This script monitor system resource"
echo

echo "The system uptime is"
uptime
echo

echo "system memory utilization"
free -m
echo

echo
echo "system disk utilization"
df -h

