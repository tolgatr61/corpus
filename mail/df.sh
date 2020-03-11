#!/bin/bash

j=$1
for i in $(seq 1 500); do cat 'content'/$i -u | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | awk 'NF != 0 {print}' | sort | awk '{if (mot == $1) tf ++; else {print mot, tf; mot = $1; tf = $2}} END {print mot, test}' | sed 1d > df.txt; done | sort -u | wc -l
