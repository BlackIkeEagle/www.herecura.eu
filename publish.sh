#!/usr/bin/env sh

hugo
find public -type f -exec chmod u=rw,og=r {} \;
rsync -av public/ herecura.eu:/var/lib/mainwebsite/data/
rm -rf public
