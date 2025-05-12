# caddy-duckdns-letsencrypt
Caddy reverse proxy for your app with a custom domain and LetsEncrypt ssl certificate, powered by docker.

## Prerequisite
- [Ubuntu](https://ubuntu.com/download/server)
- [Make](https://askubuntu.com/questions/161104/how-do-i-install-make)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Docker ([Part-1](https://docs.docker.com/engine/install/ubuntu/) & [Part-2](https://docs.docker.com/engine/install/linux-postinstall/))

## Installation
1. Register your free domain at [https://www.duckdns.org](DuckDNS.org)
2. Set the IP address of your domain to your server IP
3. Clone this repository `git clone git@github.com:latheesan-k/caddy-duckdns-letsencrypt.git`
4. Copy `.env.example` and save it as `.env` and update it
5. Run command `make up`

_See [Makefile](Makefile)_ for available make commands
