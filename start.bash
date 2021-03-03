#!/usr/bin/env bash
files=()
FILE_NAME="/home/users/mms/Documents"
prefix="/home/users/mms/"
for entry in "$FILE_NAME"/*
do
  string="$entry"
  string=${string#$prefix}
  files+=("$string")
done
countArray=${#files[@]}
echo enter file name
read FILE
for ((i = 0 ; i < "$countArray" ; i++)); do
   gcc $FILE && ./a.out << EOF
${files[$i]}
EOF
done
