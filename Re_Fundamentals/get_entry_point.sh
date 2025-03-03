#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <ELF file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: File '$1' does not exist."
    exit 1
fi

if ! file "$1" | grep -q "ELF"; then
    echo "Error: File '$1' is not a valid ELF file."
    exit 1
fi

magic_number=$(readelf -h "$1" | awk '/Magic:/ {for (i=2; i<=NF; i++) printf $i " "; print ""}')
class_format=$(readelf -h "$1" | awk '/Class:/ {print $2}')
byte_order_raw=$(readelf -h "$1" | awk '/Data:/ {print $2}')
entry_point=$(readelf -h "$1" | awk '/Entry point address:/ {print $4}')

if [[ "$byte_order_raw" == "2" ]]; then
    byte_order="little endian"
elif [[ "$byte_order_raw" == "1" ]]; then
    byte_order="big endian"
else
    byte_order="unknown"
fi

echo "ELF Header Information for '$1':"
echo "----------------------------------------"
echo "Magic Number: $magic_number"
echo "Class: $class_format"
echo "Byte Order: $byte_order"
echo "Entry Point Address: $entry_point"
