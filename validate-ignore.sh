#!/usr/bin/env bash

echo "Confirming desired files aren't transmitted..."

output=$(ls -lrt | grep -e secret | wc -l)
(( ${output} == 0))
