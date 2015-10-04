library(R6)

Timber = R6Class("Timber",

  public = list(

    # Timber$open->option
    LOG_CONS = NA,
    LOG_NDELAY = NA,
    LOG_NOWAIT = NA,
    LOG_ODELAY = NA,
    LOG_PERROR = NA,
    LOG_PID = NA,

    # Timber$open->facility
    LOG_AUTH = NA,
    LOG_AUTHPRIV = NA,
    LOG_CONSOLE = NA,
    LOG_CRON = NA,
    LOG_DAEMON = NA,
    LOG_FTP = NA,
    LOG_KERN = NA,
    LOG_LPR = NA,
    LOG_MAIL = NA,
    LOG_NEWS = NA,
    LOG_NTP = NA,
    LOG_SECURITY = NA,
    LOG_SYSLOG = NA,
    LOG_USER = NA,
    LOG_UUCP = NA,
    LOG_LOCAL0 = NA,
    LOG_LOCAL1 = NA,
    LOG_LOCAL2 = NA,
    LOG_LOCAL3 = NA,
    LOG_LOCAL4 = NA,
    LOG_LOCAL5 = NA,
    LOG_LOCAL6 = NA,
    LOG_LOCAL7 = NA,

    # Timber$log
    LOG_EMERG = NA,
    LOG_ALERT = NA,
    LOG_CRIT = NA,
    LOG_ERR = NA,
    LOG_WARNING = NA,
    LOG_NOTICE = NA,
    LOG_INFO = NA,
    LOG_DEBUG = NA,

    initialize = function() {
      # Timber$open->option
      self$LOG_CONS <- timber_LOG_CONS()
      self$LOG_NDELAY <- timber_LOG_NDELAY()
      self$LOG_NOWAIT <- timber_LOG_NOWAIT()
      self$LOG_ODELAY <- timber_LOG_ODELAY()
      self$LOG_PERROR <- timber_LOG_PERROR()
      self$LOG_PID <- timber_LOG_PID()

      # Timber$open->facility
      self$LOG_AUTH <- timber_LOG_AUTH()
      self$LOG_AUTHPRIV <- timber_LOG_AUTHPRIV()
      self$LOG_CONSOLE <- timber_LOG_CONSOLE()
      self$LOG_CRON <- timber_LOG_CRON()
      self$LOG_DAEMON <- timber_LOG_DAEMON()
      self$LOG_FTP <- timber_LOG_FTP()
      self$LOG_KERN <- timber_LOG_KERN()
      self$LOG_LPR <- timber_LOG_LPR()
      self$LOG_MAIL <- timber_LOG_MAIL()
      self$LOG_NEWS <- timber_LOG_NEWS()
      self$LOG_NTP <- timber_LOG_NTP()
      self$LOG_SECURITY <- timber_LOG_SECURITY()
      self$LOG_SYSLOG <- timber_LOG_SYSLOG()
      self$LOG_USER <- timber_LOG_USER()
      self$LOG_UUCP <- timber_LOG_UUCP()
      self$LOG_LOCAL0 <- timber_LOG_LOCAL0()
      self$LOG_LOCAL1 <- timber_LOG_LOCAL1()
      self$LOG_LOCAL2 <- timber_LOG_LOCAL2()
      self$LOG_LOCAL3 <- timber_LOG_LOCAL3()
      self$LOG_LOCAL4 <- timber_LOG_LOCAL4()
      self$LOG_LOCAL5 <- timber_LOG_LOCAL5()
      self$LOG_LOCAL6 <- timber_LOG_LOCAL6()
      self$LOG_LOCAL7 <- timber_LOG_LOCAL7()

      # Timber$log
      self$LOG_EMERG <- timber_LOG_EMERG()
      self$LOG_ALERT <- timber_LOG_ALERT()
      self$LOG_CRIT <- timber_LOG_CRIT()
      self$LOG_ERR <- timber_LOG_ERR()
      self$LOG_WARNING <- timber_LOG_WARNING()
      self$LOG_NOTICE <- timber_LOG_NOTICE()
      self$LOG_INFO <- timber_LOG_INFO()
      self$LOG_DEBUG <- timber_LOG_DEBUG()

    },

    open = function(name, option, facility) {
      timber_openlog(name, option, facility)
    },

    log = function(priority, message) {
      timber_log(priority, message)
    },

    log_emerg = function(message) {
      timber_log(self$LOG_EMERG, message)
    },

    log_alert = function(message) {
      timber_log(self$LOG_ALERT, message)
    },

    log_crit = function(message) {
      timber_log(self$LOG_CRIT, message)
    },

    log_err = function(message) {
      timber_log(self$LOG_ERR, message)
    },

    log_warning = function(message) {
      timber_log(self$LOG_WARNING, message)
    },

    log_notice = function(message) {
      timber_log(self$LOG_NOTICE, message)
    },

    log_info = function(message) {
      timber_log(self$LOG_INFO, message)
    },

    log_debug = function(message) {
      timber_log(self$LOG_DEBUG, message)
    },

    close = function() {
      timber_closelog()
    }
  )
)
