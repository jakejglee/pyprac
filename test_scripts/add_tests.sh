#!/bin/bash
# add_tests.sh
# DESCRIPTION: This script initializes new files taken from the 'testlist' file containing the names of python practice scripts.
# USAGE: chmod u+x add_tests.sh; add_tests

for i in $( cat testlist.txt ); do
	if [ ! -e $i ]
	then 
		printf "Building $i...\n"
		if [[ "$i" =~ "^.+warmup\-2.+$" ]]; then
			printf "\tadding header to $i.py...\n"
			printf "# Warmup-2: " >> "$i.py"
		fi
		else if [[ "$i" =~ "^.+string\-1.+$" ]]; then
			printf "\tadding header to $i.py...\n"
			printf "# String-1: " >> "$i.py"
		fi
		printf "$i\n#Exercise taken from codingbat.com\n# by Jake Lee, 11/24/2017\n" >> "$i.py"
	fi
done

