#!/bin/bash
# save as triplet-stop.sh
# splits a sequence into triplets
x=0
while [ -n "${1:$x:3}" ]; do
  seq=$seq${1:$x:3}" "
  x=$(expr $x + 3)
#Check the first condition: if there are 9 characters already
        if [ "$x" -gt 9 ]; then
#Check the second condition: if the chractersequence 'taa'
                if [ ${1:$x:3} == taa ]; then
                        break
                fi
        fi
done
#Print out the result of variable seq
echo "$seq"

