#!/bin/bash


name="$1"
main () {
	if [ -z "$name" ]; then
		echo "One for you, one for me."
	else
		echo "One for $name, one for me."
	fi
}

main "$name"
