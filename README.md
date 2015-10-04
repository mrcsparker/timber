# timber

R logging library that interfaces with syslog.h

## Usage

Timber supports POSIX <syslog.h> logging in R.  All of the standard log message types
are available (LOG_EMERG, LOG_ALERT, LOG_CRIT, etc).

More details can be found at http://linux.die.net/man/3/syslog

## Why would you use this?

Syslog has been around since the 1980s and it is still used in millions of *nix-based
systems all over the planet.  It has a proven track record and, while it isn't perfect,
it works.

Plus, if you are on a *nix (Unix, GNU/Linux), why not use the tools that are provided?

### Basic logging

```R
library(timber)

# Create a new instance of Timber
t = Timber$new()

# Write to the standard syslog
t$log(t$LOG_INFO, "This is a message")
t$log_err("uh oh")
```

### Advanced logging

```R
library(timber)

# Create a new instance of Timber
t = Timber$new()

# open(name, option, facility)
# - open: Open a connection to the system logger
# - name: The name of your program.  I am using 'Timber'.  Can be any string.
# - option: flags to control the operation of syslog. You can pass a single flag
#           or multiple using a `bitwOr`
# - facility: what type of program is logging the message.  You can pass a single flag
#             or multiple flags using a `bitwOr`
t$open("Timber", bitwOr(t$LOG_CONS, t$LOG_PID), t$LOG_SYSLOG)

t$log(t$LOG_INFO, "This is another message")

t$log_err("uh oh")

# closes the descriptor being used to write to the system logger.
# This is optional.
t$close()
```

## License

MIT

