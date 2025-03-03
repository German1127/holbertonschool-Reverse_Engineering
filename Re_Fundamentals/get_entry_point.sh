#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <ELF_file>"
    exit 1
fi

file_name="$1"

if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' does not exist."
    exit 1
fi

if ! file "$file_name" | grep -q "ELF"; then
    echo "Error: File '$file_name' is not an ELF file."
    exit 1
fi

magic_number=$(hexdump -n 16 -e '16/1 " %02x"' "$file_name")

class=$(readelf -h "$file_name" | grep "Class:" | awk '{print $2}')

byte_order=$(readelf -h "$file_name" | grep "Data:" | awk '{print $2}' | sed 's/,//')
if [[ "$byte_order" == "2" ]]; then
    byte_order="little endian"
elif [[ "$byte_order" == "1" ]]; then
    byte_order="big endian"
fi

entry_point_address=$(readelf -h "$file_name" | grep "Entry point address:" | awk '{print $4}')

source ./messages.sh
display_elf_header_info
