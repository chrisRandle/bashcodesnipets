#!/usr/bin/env bash
# This checks to see if a package is installed then tries to install it if not found.
# Currently only set for ubuntu linux servers

check_package () {
    package="$1"
    PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $package | grep "install ok installed")
    echo "Checking for ${package}: $PKG_OK"
    if [ "" = "$PKG_OK" ]
    then
        echo "Missing ${package}. Installing."
        apt-get -y install $package
    fi
}

# Example
#check_package python3