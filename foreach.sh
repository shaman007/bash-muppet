#!/bin/bash
#usage: foreach.sh text_file_with_hostnames.txt

#sshopts="-A -n"
sshopts="-A -n -o \"StrictHostKeyChecking no\""
command="ls -la"


while read p; do
  echo "----$p----"
  ssh $p '$sshopts' "$command"
done <$1
