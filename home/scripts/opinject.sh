#!/bin/sh
source=${HOME}/.workstation/op
for infile in $( find $source -type f ); do
    outfile="${HOME}/"$( echo "${infile#$source}" | cut -c 2- )
    mkdir -p $(dirname "${outfile}")
    op inject -f -i $infile -o $outfile
    chmod 700 $outfile
done
