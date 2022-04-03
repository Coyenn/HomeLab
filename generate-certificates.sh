#!/usr/bin/env bash

set -e
cd "$(dirname "$0")"

{
    mkdir -p ./data/certificates
} || {
    echo "Certificates directory already exists. This is expected and not an issue."
}

sudo openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out ./data/certificates/certificate.crt \
            -keyout ./data/certificates/key.key