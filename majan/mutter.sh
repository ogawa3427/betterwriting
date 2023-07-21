#!/bin/bash

output_file="output.txt"

strings=("ph" "ch" "ea" "to" "a1" "a2" "a3" "a4" "a5" "b1" "b2" "b3")
suffixes=("x" "y" "z" "w")

for str in "${strings[@]}"; do
  for suffix in "${suffixes[@]}"; do
    echo "${str}${suffix}" >> mut
  done
done
exit
