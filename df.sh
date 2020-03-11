#!/bin/bash

j=$1
for i in $(seq 1 500); do cat 'content'/$i -u | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | awk 'NF != 0 {print}' | sort | awk '{if (mot == $1) df ++; else {print mot, df; mot = $1; df = $2}} END {print mot, df}' | sed 1d > df.txt; done | sort -u | wc -l
