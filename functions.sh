# Print a specific line from a file
# Usage: printlinefromfile 123 foo.txt
printlinefromfile() {
  line=$1
  sed $line'q;d' $2
}
