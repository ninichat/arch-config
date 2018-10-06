#!/bin/sh

sudo pkgfile --update
systemctl --user daemon-reload

# Copy some conf files (only supposedly better font display now)
for i in $(find etc -type f); do
    sudo cp "$i" "/$i"
done
