#!/usr/bin/env sh

hugo
find public -type f -exec chmod u=rw,og=r {} \;
rsync -av public/ web.herecura.eu:/data/herecura-www/data/
rm -rf public
