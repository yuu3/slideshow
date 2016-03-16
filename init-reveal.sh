#!/usr/bin/env bash

URL="https://github.com/hakimel/reveal.js/archive/master.zip"
PATH="/tmp/reveal.zip"
CURL="/usr/bin/curl"
UNZIP="/usr/bin/unzip"
CP="/bin/cp"

if ! $CURL -o $PATH -OLvf "$URL"; then
    echo "Error: Donwload or http"
    exit -1
fi

$UNZIP "$PATH" -d /tmp

for i in css js lib plugin
do
    $CP -r "/tmp/reveal.js-master/$i" .
done
