#!/usr/bin/env bash
#
# Link to this file in /etc/cron.d with this entry:
# 25 6 * * * root /data/projects/environment-setups/linux/cron.d/nmon.sh

/usr/bin/nmon -f -t 10 -EJ -s 60 -c 1440 -m /data/nmonlog
