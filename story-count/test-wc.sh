#!/bin/bash
EXPECTED=13
ACTUAL=$(wc -w random.txt | xargs | cut -f1 -d' ')

if [[ $EXPECTED == $ACTUAL ]]
then
  echo "SUCCESS: correct word count"
else
  echo "FAIL: got $ACTUAL but expected $EXPECTED"
  exit 1
fi
