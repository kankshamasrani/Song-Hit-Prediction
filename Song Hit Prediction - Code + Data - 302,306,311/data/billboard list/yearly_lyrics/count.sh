#!/bin/bash

count=0

for file in *.txt
do
	$count=$((count+1))
done

echo $count
