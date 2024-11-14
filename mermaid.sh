#!/bin/bash
for file in *.mmd *.mermaid; do
  if [ -f "$file" ]; then
    mmdc -i "$file" -o "${file%.*}.png" -s 3
  fi
done