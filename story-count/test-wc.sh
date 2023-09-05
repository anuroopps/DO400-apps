#!/bin/bash

EXPECTED=2
ACTUAL=$(wc -w "story-count/random.txt" | awk print($1))

if [[ $EXPECTED -eq $ACTUAL ]]; then
  echo "Both are matching"
elif [[ $EXPECTED -gt $ACTUAL ]]; then
  echo "Expected is more than actual"
  exit 1
else
  echo "Expected is less than actual"
  exit 1
fi
