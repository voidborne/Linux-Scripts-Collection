#!/usr/bin/env bash

# This script updates the system, upgrades installed packages, 
# removes unnecessary packages, and cleans the package cache.

if
    # Update package lists
    sudo apt-get update -y &&

    # Upgrade all packages
    sudo apt-get upgrade -y &&

    # Remove unnecessary packages
    sudo apt-get autoremove -y &&

    # Clean up
    sudo apt-get clean

then
    echo "System update and cleanup complete."

else
    echo "An error occured during the update process."

fi