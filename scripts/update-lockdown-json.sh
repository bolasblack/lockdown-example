#!/bin/bash

if [ -f lockdown.json ]; then
  npm run lock
  git add lockdown.json
fi
