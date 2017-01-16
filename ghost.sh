#!/bin/bash
set -ex
echo ${SERVEPORT}
sed -i 's/SERVEPORT/'"${SERVEPORT}"'/' default.cfg && ./ghost++ && tail -f /dev/null
