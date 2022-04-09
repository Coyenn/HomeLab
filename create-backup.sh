#!/usr/bin/env bash

set -o
cd "$(dirname "$0")"

{
    sudo rm -R ./backups/temp
} || {
    printf ""
}

sudo cp -R ./data ./backups/temp
sudo mv ./backups/temp ./backups/$(date +'%m.%d.%Y_%T')