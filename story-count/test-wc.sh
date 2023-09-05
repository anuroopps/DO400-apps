#!/bin/bash
EXPECTED=23
ACTUAL=$(wc -w "story-count/random.txt")

if [[ $EXPECTED == $ACTUAL ]]
then
  echo "Both are matching"
else
  echo "FAIL: got $ACTUAL but expected $EXPECTED"
  exit 1
fi
