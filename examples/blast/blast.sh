#!/bin/bash

# $1 = "--query" (to simulate running BLAST), which we just ignore.
# $3 = "--outfmt" (ditto).

# $2 is given to us by 2-run-blast.sh (it's one of the x?? FASTA files). Pull
# out the query id so we can make fake BLAST output for it.
queryId=$(head -n 1 $2 | cut -c2-)

# Emit fake BLAST output: bitscore, subject id, query id (taken from the FASTA).
echo "$RANDOM subject-$RANDOM $queryId" > $2.blast-out

echo "TASK: $2"
