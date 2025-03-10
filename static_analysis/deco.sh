#!/bin/bash

valores=(
  48 4F 4C 42 7B 52 65 76 65 72 73 65
  5F 45 6E 67 69 6E 65 65 72 69 6E 67
  5F 69 73 5F 46 75 6E 7D
)

for hex in "${valores[@]}"; do
  printf "\\x$hex"
done

echo
