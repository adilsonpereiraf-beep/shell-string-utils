#!/usr/bin/env bash
# Small collection of string utility functions.

to_upper() {
  printf '%s' "$1" | tr '[:lower:]' '[:upper:]'
}

count_words() {
  printf '%s' "$1" | wc -w | tr -d ' '
}

is_palindrome() {
  local input clean reversed
  input="$1"
  clean=$(printf '%s' "$input" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
  reversed=$(printf '%s' "$clean" | rev)
  [ "$clean" = "$reversed" ]
}
