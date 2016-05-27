#!/bin/bash
set -e

if [ ! -d "/opt/svn/conf" ]; then
    echo "==> could not find confige dir:/opt/svn/conf"
    echo "==> creating svn respository ..."
    svnadmin create /opt/svn
    echo "==> finish create svn respository"
fi
echo "==> starting svn service ..."
exec "$@"

