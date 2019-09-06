#!/bin/bash

# Save the interface name in variable

IF=$*

# First Down the interface

sudo ifconfig "$IF" down


## now change the mac address

sudo macchanger --random "$IF"


# back to network

sudo ifconfig "$IF" up


echo "Successfully Got it"
exit
