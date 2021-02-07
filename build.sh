#!/bin/bash

rm -rf dist && \
  mkdir dist && \
  cd src && \
  nmlc -o ../dist/no-monorail.grf no-monorail.nml && \
  cd .. && \
  cp LICENSE dist/license.txt && \
  cp README.md dist/readme.txt && \
  cp CHANGELOG.md dist/changelog.txt && \
  tar -cf no-monorail.tar dist  && \
  mv no-monorail.tar dist
