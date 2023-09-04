#!/bin/bash
EXPECTED=9
ACTUAL=$(wc -w random.txt)

if [[ $EXPECTED == $ACTUAL ]]
then
  echo "SUCCESS: correct word count"
else
  echo "FAIL: got $ACTUAL but expected $EXPECTED"
  exit 1
fi
