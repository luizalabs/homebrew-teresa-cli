# Homebrew Teresa Client

## Installation

Run the following in your command-line:

```sh
$ brew tap luizalabs/homebrew-teresa-cli
$ brew install teresa-cli
```


## Config and first login

To be able to login, first you need to configure to use a cluster, eg:

```sh
$ teresa config set-cluster aws_staging --server https://staging.mydomain.com
$ teresa config use-cluster aws_staging
```


## More info

```
$ teresa --help
```