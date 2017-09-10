#!/bin/bash

for year in {1990..2012}
do
	#rm -r $year
	mkdir $year
	cp "./$year.csv" "$year/"
	mkdir "$year/lyrics"
	cp -r "yearly_lyrics/$year/." "$year/lyrics/"
done
