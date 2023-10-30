#!/bin/bash

base=$1
current=$2
other=$3
output=$4

# Favor non-empty content over empty content
if [[ -s $current ]] && [[ ! -s $other ]]; then
    cat $current > $output
elif [[ ! -s $current ]] && [[ -s $other ]]; then
    cat $other > $output
else
    # Default to standard merge conflict if neither or both sides are non-empty
    git merge-file $current $base $other
fi