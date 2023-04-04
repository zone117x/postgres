#!/bin/bash

gcc -gmodules -x c -std=gnu17 -I../src/include main.c cJSON.c \
  -L../src/backend -L../src/common -L../src/port \
  -lpostgres -lpgcommon_srv -lpgport_srv -lz \
  -o your_executable