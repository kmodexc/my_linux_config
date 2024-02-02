#!/bin/bash

echo "This script will update existing files in both locations"

rsync -avz --update --existing /usr/local/bin/ ./data/
rsync -avz --update --existing ~/.config/i3/ ./data/
rsync -avz --update --existing ~ ./data/