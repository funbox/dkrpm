# About

Dockerized RPM building tool for any platforms based on [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

<p align="center"><a href="#demo">Demo</a> • <a href="#requirements">Requirements</a> • <a href="#getting-started">Getting started</a> • <a href="#prebuilt-images">Prebuilt images</a> • <a href="#usage">Usage</a> • <a href="#shellcheck-status">ShellCheck Status</a> • <a href="#credits">Credits</a> • <a href="#license">License</a></p>

## Demo

[![asciicast](https://asciinema.org/a/134855.png)](https://asciinema.org/a/134855)

## Requirements

- Docker

## Getting started

Install `dkrpm` shell script to one of available `$PATH` directory.

```shell
sudo cp dkrpm /usr/local/bin/dkrpm
sudo chmod +x /usr/local/bin/dkrpm
```

Use environment variables `DOCKER_RPMBUILDER_IMAGE` and `DOCKER_PERFECTO_IMAGE` to specify custom images.

## Prebuilt images

Feel free to use any of the following prebuilt images:

- [gongled/rpmbuilder:7](https://hub.docker.com/r/gongled/rpmbuilder/) [default]
- [gongled/rpmbuilder:6](https://hub.docker.com/r/gongled/rpmbuilder/)

Use Makefile target `all` to build example images from the source code:

```
make all
```

#### Available repositories

Docker images provide the following repositories by default.

##### CentOS/RHEL 6

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)
- [Software Collections](https://linux.web.cern.ch/linux/other.shtml)

##### CentOS/RHEL 7

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)

_In case you need to setup custom YUM repository, please make changes to `Dockerfile` and build your own image._

## Usage

```
Usage: dkrpm command source <option>

Commands:

  p or pack             Create RPM package from spec file
  u or unpack           Unpack source files from SRPM package
  c or check            Validate spec file using Perfecto
  d or debug            Run shell command instead of RPMBuilder
  h or help             Show detailed information about command

See "dkrpm help <command>" for information on a specific command.

Examples:

  dkrpm pack htop.spec -V -1
  dkrpm unpack htop-2.0.2-0.el7.src.rpm
  dkrpm check htop.spec
  dkrpm debug htop.spec
```

## ShellCheck Status

| Branch | Status |
|------------|--------|
| `master` | [![Build Status](https://travis-ci.org/gongled/dkrpm.svg?branch=master)](https://travis-ci.org/gongled/dkrpm) |
| `develop` | [![Build Status](https://travis-ci.org/gongled/dkrpm.svg?branch=develop)](https://travis-ci.org/gongled/dkrpm) |

## Credits

[Anton Novojilov](https://github.com/andyone) for RPMBuilder and ESSENTIAL KAOS repository.

## License

MIT
