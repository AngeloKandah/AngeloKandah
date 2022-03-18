#!/bin/bash

cat wocka.json | 
  jq '.['$(( $RANDOM % 10019 ))'] | (.title, .body)' | 
  xargs -I '{}' sed 's/REPLACEME/{}\n/g' template.md > README.md
