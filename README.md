# timber

R logging library that interfaces with syslog.h

## Usage

Timber supports POSIX <syslog.h> logging in R.  All of the standard log message types
are available (LOG_EMERG, LOG_ALERT, LOG_CRIT, etc).

### Basic logging

```R
library(timber)

t = Timber$new()
t$log(t$LOG_INFO, "This is a message")
t$log_err("uh oh")
```

### Advanced logging

```R
library(timber)

t = Timber$new()
t$open("Timber", bitwOr(t$LOG_CONS, t$LOG_PID), t$LOG_SYSLOG)
t$log(t$LOG_INFO, "This is another message")
t$log_err("uh oh")
t$close()
```

## License

MIT

