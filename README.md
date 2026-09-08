# shell-string-utils

Small collection of Bash string utility functions.

## Functions

- `to_upper "text"` — converts text to uppercase.
- `count_words "text"` — counts the number of words in text.
- `is_palindrome "text"` — returns success (exit code 0) if text is a palindrome, ignoring spaces and case.

## Usage

```bash
source lib.sh

to_upper "hello"        # HELLO
count_words "one two"   # 2
is_palindrome "level" && echo "yes"
```

## Running tests

```bash
bash tests/test_lib.sh
```
