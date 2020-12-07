# Introduction

Receive a desktop notification when ProtonVPN is not connected.

[ProtonVPN](https://protonvpn.com/) is a VPN solution that comes with a command line utility. This small program was created for a personal need, to alert me from time to time that I'm not connected via VPN. There is no magic behind it: I set it up to run periodically via [cron](https://en.wikipedia.org/wiki/Cron) job, and the script checks the output of the status command and sends a desktop notification if disconnected.

# Set up

`protonvpn_status.jl` script assumes the location of `protonvpn` utility to be `/usr/local/bin/protonvpn`, change in the script if needed.

This cron job triggers every 5 minutes, check man page for syntax and options:

```
# Desktop notification for ProtonVPN status
*/5 * * * * /path/to/julia /path/to/notify-protonvpn-status/protonvpn_status.jl
```

That's it!

# Stop

To stop permanently, delete the entry in the crontab.

To stop temporarily, comment the line running the script by prepending it with `#`.

# Licence

GNU GPL v3. See LICENSE.

# Author

Domagoj Marsic, 2020

Contact: dmars+github@protonmail.com
