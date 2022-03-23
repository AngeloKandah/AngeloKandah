#!/bin/bash

jq '.['$(( $RANDOM % 10019 ))'] | (.title, .body)' wocka.json | 
  xargs bash -c 'sed -e "s^TITLE^$0^g" -e "s^JOKE^$1^g" template.md > README.md'
