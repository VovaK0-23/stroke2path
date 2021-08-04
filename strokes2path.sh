#! /bin/sh
files=(*.svg)
total=${#files[@]}
i=0
for file in "${files[@]}"; do
	i=$(( i + 1 ))
	inkscape -g --actions="select-all:all;object-stroke-to-path;export-overwrite;export-do;EditUndo;FileClose" --batch-process "$file"
	echo "File: $file successfully formated and saved"
	echo "Finished $i out of $total"
done
