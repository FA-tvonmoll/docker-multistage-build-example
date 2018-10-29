#!/usr/bin/env bash

echo "Confirming desired files aren't transmitted..."

output=$(find . -name "*secret*" -print | wc -l)
(( ${output} == 0))
