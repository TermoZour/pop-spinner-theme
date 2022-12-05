#!/bin/bash

# echo $1;
splitArr=(${1/-/ })

outputName=${splitArr[0]}

rest=${splitArr[1]}

index=(${rest/./ })
format=${index[1]}

size=32

prevDegree='0'
nextIndex='0'
for i in {0..60}; do
  inkscape -w $size -h $size root.svg --actions="select-all;transform-rotate:$prevDegree" -o $outputName-$nextIndex.$format

  nextIndex=$((i+1))
  prevDegree=$((prevDegree+6))
done
