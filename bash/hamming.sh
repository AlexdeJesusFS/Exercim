#!/bin/bash

#Calculate the Hamming Distance between two DNA strands.


main() {
      strand1="$1"
      strand2="$2"

      len1="${#strand1}"
      len2="${#strand2}"

      count=0
	 #the hamming different
   	 if [ "$len1" -eq "$len2" ]; then
      	    for (( i=0; i<len1; i++ )); do
            letter1="${strand1:$i:1}"
            letter2="${strand2:$i:1}"
	    if [ "$letter1" != "$letter2" ]; then
	       count=$(( count + 1 ))
	    fi
	    done
 	    echo "$count"
	 else
	    echo "strands must be of equal length"
	    exit 1
         fi

}

if [ "$#" -eq 0 ] || [ "$#" -eq 1 ]; then
   echo "Usage: hamming.sh <string1> <string2>"
   exit 1
else
   main "$1" "$2"
fi
