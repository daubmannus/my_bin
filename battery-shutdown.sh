#!/bin/bash

# Gracefully shutdown laptop on low battery

# "INSTALL":
# echo 'SUBSYSTEM=="power_supply", KERNEL=="BAT0", ACTION=="change", RUN+="/usr/bin/systemd-run --no-block /usr/local/bin/battery-shutdown.sh"' >/etc/udev/rules.d/99-battery-shutdown.rules
# udevadm control --reload

THRESHOLD=15
BAT="/sys/class/power_supply/BAT0"

b_capacity() {
	cat "$BAT/capacity"
}
b_status() {
	cat "$BAT/status"
}


logger --id=$$ -t "$(basename "$0")" -p local0.info "Status changed. Battery is $(b_status) $(b_capacity)%."

# if I'm not alone
[ $(ps h -C "$(basename "$0")" | grep -wv $$ | wc -l) -gt 1 ] && { 
	logger --id=$$ -t "$(basename "$0")" -p local0.info "the script is already running, exiting."
	exit 0
}
sleep 5

while [ "$(b_status)" = "Discharging" ]; do
        logger --id=$$ -t "$(basename "$0")" -p local0.info "Battery $(b_status) $(b_capacity)%."
        if [ $(b_capacity) -le $THRESHOLD ]; then
                logger --id=$$ -t "$(basename "$0")" -p daemon.crit "Battery low ($(b_capacity)%). Shutting down."
                systemctl poweroff
        fi
        sleep 60
done
