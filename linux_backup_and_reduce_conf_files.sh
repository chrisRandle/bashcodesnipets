#!/usr/bin/env bash
# This takes in a file back's it up and clears out new lines and comments.

check_configuration () {
    config=$1
    if [ ! -f ${config}-ORIG ]
    then
        if [ ! -f ${config} ]
        then
            echo "# ERROR missing required configuration file [${config}]"
        else
            echo "# Backup the original configuration file [${config}]"
            cp $config ${config}-ORIG
            # Clean up the configuration
            cat ${config}-ORIG | grep -v ^# | grep -v ^$ > $config
        fi
    fi
}

# Example
#ansible_config=/etc/ansible/ansible.cfg
#check_configuration $ansible_config

