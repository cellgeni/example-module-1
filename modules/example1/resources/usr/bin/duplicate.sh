#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <input_file> <output_file>"
  exit 1
fi

cat "$1" "$1" >"$2"
