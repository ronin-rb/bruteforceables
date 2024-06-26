# bruteforceables

A collection of bruteforceable apps and servers. Useful for testing network
bruteforcers.

## Credentials

All apps require the username `admin` and the password `password1234`.

## Apps

* [ftp/](ftp) - An FTP server.
* `http/`
  * [basic_auth](http/basic_auth) - A Ruby Sinatra app that uses HTTP
    Basic-Auth.
  * [html_login_form](http/html_login_form) - A Ruby Sinatra app that uses a
    HTML login form.
* [imap/](imap) - An IMAP server.
* [mysql/](mysql) - A MySQL server.
* [pop3/](pop3) - A POP3 server.
* [postgres/](postgres) - A PostgreSQL server.
* [redis/](redis) - A Redis server.
* [telnet/](telnet) - A telnet server.
* [ssh/](ssh) - A SSH server.

## Contributing

### New Apps

* Must exist within a directory.
* Must contain a `Dockerfile` to build the app as a docker image.
* Must contain a `docker-compose.yml` file for quickly starting up the docker
  image.
* Must contain a `Makefile` for building the docker image and running either
  the app or the docker image.
* Must contain a `README.md` file containing basic instructions on how to run
  the server.
