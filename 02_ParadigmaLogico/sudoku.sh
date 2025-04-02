#!/bin/bash

URL="https://sudokuset.com/pt/generator"

HTML=$(curl -s "$URL")

SUDOKU=$(echo "$HTML" | grep -oP 'data-grid="\[\[.*?\]\]"' | sed -E 's/data-grid="//; s/"$//')

echo "Sudoku:"
echo "$SUDOKU"