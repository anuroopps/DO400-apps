#!/bin/bash
EXPECTED=13
ACTUAL=$(wc -w < "random.txt" | awk '{print $1}')

if [[ $EXPECTED == $ACTUAL ]]
then
  echo "SUCCESS: correct word count"
else
  echo "FAIL: got $ACTUAL but expected $EXPECTED"
  exit 1
fi
