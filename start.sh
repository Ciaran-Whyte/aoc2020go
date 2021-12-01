#!/usr/bin/env bash

YEAR="${1}"
DAY="${2}"
DAY_NO_ZEROS="$(echo $DAY | sed 's/^0*//')"
INPUT="main.go.templ"
OUTPUT="${DAY}/Day_${DAY}.go"
PUZZLE_URL="https://adventofcode.com/${YEAR}/day/${DAY_NO_ZEROS}/input"
PUZZLE_FILE="input.txt"

mkdir -p "${DAY}"
curl "${PUZZLE_URL}" -H "cookie: session=${AOC_SESSION_COOKIE}" -o "${DAY}/${PUZZLE_FILE}" 2>/dev/null
cp "${INPUT}" "${DAY}/main.go"
echo "Done"
