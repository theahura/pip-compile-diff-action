#!/bin/bash
set -e

echo "Checking requirements.txt for parity with requirements.in file."
if [ -e requirements-original.txt ]
then
  exit 1
else
  cp requirements.txt requirements-original.txt
fi

pip-compile
diff requirements.txt requirements-original.txt
rm requirements-original.txt
