#!/usr/bin/env bash
set -e

WORK="pipeline_lab"
mkdir -p "$WORK"

printf 'INFO: System started\nERROR: Disk warning\nINFO: Task completed\nERROR: Network issue\n' > "$WORK/system.log"

echo "All log entries:"
cat "$WORK/system.log"

echo
echo "Error entries:"
grep "ERROR" "$WORK/system.log"

echo
echo "Total number of errors:"
grep -c "ERROR" "$WORK/system.log"
