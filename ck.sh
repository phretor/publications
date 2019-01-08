#! /bin/bash

echo '[INFO] Checking for missing files'
cat publications.bib | grep -E 'File[^=]+=' | grep -oE '\{[^}]+\}' | tr -d '[{}]' | \
  while read f
  do
    if [[ ! -e "$f" ]]
    then
      echo '-------------------------------------------------------------------------------'
      echo "[ERROR] File not found: $f"
      echo '-------------------------------------------------------------------------------'
      grep -B 10 $f publications.bib
      echo '-------------------------------------------------------------------------------'
    fi
  done

echo '[INFO] Checking for unused files'
find files -type f -iname '*.pdf' | \
  while read f
  do
    grep -q $f publications.bib || echo "[WARNING] $f not used"
  done
