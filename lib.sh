#!/usr/bin/env bash
# Small collection of string utility functions.

to_upper() {
  printf '%s' "$1" | tr '[:lower:]' '[:upper:]'
}

count_words() {
  printf '%s' "$1" | wc -w | tr -d ' '
}

is_palindrome() {
  local input clean reversed i
  input="$1"
  clean=$(printf '%s' "$input" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
  reversed=""
  for (( i=${#clean}-1; i>=0; i-- )); do
    reversed="$reversed${clean:$i:1}"
  done
  [ "$clean" = "$reversed" ]
}
