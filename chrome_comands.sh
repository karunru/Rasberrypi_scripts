#!/bin/bash

# this will kill all chromiums running
killall chromium-browser
# Since running from CLI, chromium doesn't know where to display, this fixes that
export DISPLAY=:0.0 
# now fire up chromium again.
chromium-browser --noerrdialogs --kiosk https://github.com/karunru&
