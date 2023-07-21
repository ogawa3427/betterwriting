#!/bin/bash
echo -n "" > mut
output_file="output.txt"

strings=("a1" "b1" "c1" "d1" "e1" "a2" "b2" "c2" "d2" "e2" "f2" "b3" "c3" "e3" "f3" "a4" "b4" "c4" "d4" "e4" "f4" "a5" "b5" "d5" "e5" "f5" "a6" "b6" "c6" "d6" "e6" "ch" "ph" "la" "ig" "to" "ea" "ng")
suffixes=("x" "y" "z" "w")

for str in "${strings[@]}"; do
  for suffix in "${suffixes[@]}"; do
    echo "${str}${suffix}" >> mut
  done
done
exit
