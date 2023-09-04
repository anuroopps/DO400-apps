#!/bin/bash
EXPECTED=$2
ACTUAL=$(wc -w $1)

if [[ $EXPECTED == $ACTUAL ]]
then
  echo "SUCCESS: correct word count"
else
  echo "FAIL: got $ACTUAL but expected $EXPECTED"
  exit 1
fi
