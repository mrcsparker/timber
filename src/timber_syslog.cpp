#include <Rcpp.h>
#include <string>
#include <iostream>
#include <cstring>
#include <syslog.h>

using namespace Rcpp;

// -- openlog->option

// [[Rcpp::export]]
int timber_LOG_CONS() {
  return LOG_CONS;
}

// [[Rcpp::export]]
int timber_LOG_NDELAY() {
  return LOG_NDELAY;
}

// [[Rcpp::export]]
int timber_LOG_NOWAIT() {
  return LOG_NOWAIT;
}

// [[Rcpp::export]]
int timber_LOG_ODELAY() {
  return LOG_CONS;
}

// [[Rcpp::export]]
int timber_LOG_PERROR() {
  return LOG_PERROR;
}

// [[Rcpp::export]]
int timber_LOG_PID() {
  return LOG_PID;
}

// -- openlog->facility

// [[Rcpp::export]]
int timber_LOG_AUTH() {
  return LOG_AUTH;
}

// [[Rcpp::export]]
int timber_LOG_AUTHPRIV() {
  return LOG_AUTHPRIV;
}

// [[Rcpp::export]]
int timber_LOG_CONSOLE() {
#if defined(LOG_CONSOLE)
  return LOG_CONSOLE;
#else
  return -1;
#endif
}

// [[Rcpp::export]]
int timber_LOG_CRON() {
  return LOG_CRON;
}

// [[Rcpp::export]]
int timber_LOG_DAEMON() {
  return LOG_DAEMON;
}

// [[Rcpp::export]]
int timber_LOG_FTP() {
  return LOG_FTP;
}

// [[Rcpp::export]]
int timber_LOG_KERN() {
  return LOG_KERN;
}

// [[Rcpp::export]]
int timber_LOG_LPR() {
  return LOG_LPR;
}

// [[Rcpp::export]]
int timber_LOG_MAIL() {
  return LOG_MAIL;
}

// [[Rcpp::export]]
int timber_LOG_NEWS() {
  return LOG_NEWS;
}

// [[Rcpp::export]]
int timber_LOG_NTP() {
#if defined(LOG_NTP)
  return LOG_NTP;
#else
  return -1;
#endif
}

// [[Rcpp::export]]
int timber_LOG_SECURITY() {
#if defined(LOG_SECURITY)
  return LOG_SECURITY;
#else
  return -1;
#endif
}

// [[Rcpp::export]]
int timber_LOG_SYSLOG() {
  return LOG_SYSLOG;
}

// [[Rcpp::export]]
int timber_LOG_USER() {
  return LOG_USER;
}

// [[Rcpp::export]]
int timber_LOG_UUCP() {
  return LOG_UUCP;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL1() {
  return LOG_LOCAL1;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL2() {
  return LOG_LOCAL2;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL3() {
  return LOG_LOCAL3;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL4() {
  return LOG_LOCAL4;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL5() {
  return LOG_LOCAL5;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL6() {
  return LOG_LOCAL6;
}

// [[Rcpp::export]]
int timber_LOG_LOCAL7() {
  return LOG_LOCAL7;
}

// [[Rcpp::export]]
void timber_openlog(std::string log_name, int option, int facility) {
  openlog(log_name.c_str(), option, facility);
}

// [[Rcpp::export]]
int timber_LOG_EMERG() {
  return LOG_EMERG;
}

// [[Rcpp::export]]
int timber_LOG_ALERT() {
  return LOG_ALERT;
}

// [[Rcpp::export]]
int timber_LOG_CRIT() {
  return LOG_CRIT;
}

// [[Rcpp::export]]
int timber_LOG_ERR() {
  return LOG_ERR;
}

// [[Rcpp::export]]
int timber_LOG_WARNING() {
  return LOG_WARNING;
}

// [[Rcpp::export]]
int timber_LOG_NOTICE() {
  return LOG_NOTICE;
}

// [[Rcpp::export]]
int timber_LOG_INFO() {
  return LOG_INFO;
}

// [[Rcpp::export]]
int timber_LOG_DEBUG() {
  return LOG_DEBUG;
}

// [[Rcpp::export]]
void timber_log(int type, std::string message) {
  syslog(type, "%s", message.c_str());
}

// [[Rcpp::export]]
void timber_closelog() {
  closelog();
}
