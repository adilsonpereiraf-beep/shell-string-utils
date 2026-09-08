#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../lib.sh"

pass=0
fail=0

assert_eq() {
  local desc="$1" expected="$2" actual="$3"
  if [ "$expected" = "$actual" ]; then
    echo "PASS: $desc"
    pass=$((pass+1))
  else
    echo "FAIL: $desc (expected '$expected', got '$actual')"
    fail=$((fail+1))
  fi
}

assert_eq "to_upper lowercases input" "HELLO" "$(to_upper "hello")"
assert_eq "count_words counts words" "3" "$(count_words "one two three")"

echo ""
echo "$pass passed, $fail failed"
[ "$fail" -eq 0 ]
