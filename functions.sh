# Print a line number from a file
# Usage: print_line_file 123 foo.txt
print_line_file() {
  line=$1
  sed $line'q;d' $2
}

# Find/replace text in a file
# Usage: find_replace_file foo bar baz.txt
find_replace_file() {
  echo -e ",s/$1/$2/g\012 w" | ed -s $3
}
