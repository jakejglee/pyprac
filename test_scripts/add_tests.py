#!/usr/bin/env python
# add_tests.py
# DESCRIPTION: This script initializes new files taken from the 'testlist' file containing the names of python practice scripts.
# USAGE: chmod a+x add_tests.sh; add_tests

# Imported
import os
import re

r = open('testlist.txt', 'r')
for test in r:
    if not os.path.isfile(test):
		print "Building" + test "...\n"
                if re.match('.*warmup-1.*', test):
			print "\tadding header to $i.py...\n"
			print "# Warmup-2: " >> "$i.py"
		else if [[ "$i" =~ ^(.*string\-1.*) ]]; then
			printf "\tadding header to $i.py...\n"
			printf "# String-1: " >> "$i.py"
		fi
		printf "$i\n#Exercise taken from codingbat.com\n# by Jake Lee, 11/24/2017\n" >> "$i.py"
	fi
done

