#!/bin/bash
# chunk is the filename with paths to bigwigs one per line
# tiledbasedir is the directory where the tiledbdirs get dumped into
# load_into_tiledb.py should be in path with genomelake installed
chunk=$1
tiledbbasedir=$2
for line in $(cat $1); do 
	tiledbname="$tiledbbasedir"$(basename $line | sed 's/\.bigwig$//g')
	python load_into_tiledb.py "$line" $tiledbname
done

