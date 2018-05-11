#!/bin/sh

if [ $# -eq 0 ]; then
  hugo server -DEF --bind=0.0.0.0 --port=${PORT} --baseUrl=/ --appendPort=false
else
  hugo $@
fi

