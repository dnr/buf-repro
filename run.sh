#!/bin/sh

echo "Buf version:"
buf --version

echo
echo "Correctly uses 'WIRE' rules (no output):"
buf breaking new.bin --against old.bin --config buf-v1.yaml

echo
echo "Uses rules besides 'WIRE':"
buf breaking new.bin --against old.bin --config buf-v2.yaml
