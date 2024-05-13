#!/bin/bash

# Function to display messages in red and exit
die() {
    echo -e "\033[91m$1\033[0m" >&2
    exit 1
}

# Testing if root...
testRoot() {
    if [ $UID -ne 0 ] ; then
        die "You must run this script as root"
    fi
}

# Check if config_dir exists   
checkInstall() {
    if [ ! -d "$config_dir" ]; then
        die "The specified Firefox directory does not exist. Firefox may not be installed or not in the default directory."
    fi
}

testRoot

# For linux
config_dir="/lib/firefox/"
preferences_dir="/lib/firefox/browser/defaults/preferences/"

checkInstall

distribution_dir="/lib/firefox/distribution/"
mkdir -p "$distribution_dir"
#cp ./Files/Config/distribution/policies.json "$distribution_dir"

# Create directories if they don't exist
mkdir -p "$preferences_dir"

# Copy files to the directories
cp ./Files/Config/mozilla.cfg "$config_dir"
cp -r ./Files/Config/browser/defaults/preferences/* "$preferences_dir"
