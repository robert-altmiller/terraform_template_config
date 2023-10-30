#!/bin/bash

# Program Execution for Resolving Merge Conflicts
# Favor the main branch (REMOTE) content when both branches have differing non-empty content.
# Choose the non-empty content if one branch's content is empty and the other's is not.
# Default to the feature branch (LOCAL) content if not covered by the above scenarios.


# Get the parameters passed by git
BASE=$1
LOCAL=$2
REMOTE=$3
MERGED=$4

# If LOCAL is non-empty and differs from REMOTE
if [[ -s $LOCAL ]] && ! cmp -s $LOCAL $REMOTE; then
    # If REMOTE is also non-empty, favor main (REMOTE)
    if [[ -s $REMOTE ]]; then
        cp $REMOTE $MERGED
    else
        cp $LOCAL $MERGED
    fi

# If LOCAL is empty and REMOTE is non-empty
elif [[ ! -s $LOCAL ]] && [[ -s $REMOTE ]]; then
    cp $REMOTE $MERGED
# If LOCAL is non-empty and REMOTE is empty
elif [[ -s $LOCAL ]] && [[ ! -s $REMOTE ]]; then
    cp $LOCAL $MERGED
else
    # Default case: just choose LOCAL (this shouldn't happen if you've covered all scenarios)
    cp $LOCAL $MERGED
fi

exit 0
