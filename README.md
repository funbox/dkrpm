# About

Dockerized RPM building tool for any platforms based on [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

## Requirements

- Docker 1.11 or higher

## Getting started

Install `dkrpm` shell script to one of available `$PATH` directory.

```shell
sudo cp dkrpm /usr/local/bin/dkrpm
sudo chmod +x /usr/local/bin/dkrpm
```

## Prebuilt images

Feel free to use any of the following prebuilt images:

- [gongled/rpmbuilder:6](https://hub.docker.com/r/gongled/rpmbuilder/)
- [gongled/rpmbuilder:7](https://hub.docker.com/r/gongled/rpmbuilder/)

## Available repositories

Docker images provide the following repositories by default.

#### CentOS/RHEL 6

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)
- [Software Collections](https://linux.web.cern.ch/linux/other.shtml)

#### CentOS/RHEL 7

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)

_In case you need to setup custom YUM repository, please make changes to `Dockerfile` and build your own image._

## Usage

```
Usage: dkrpm command tag source <option>

Commands:

  p or pack             Create RPM package from spec file
  u or unpack           Unpack source files from SRPM package
  c or check            Validate spec file using RPMLint
  d or debug            Run shell command instead of RPMBuilder
  h or help             Show detailed information about command

See "dkrpm help <command>" for information on a specific command.

Examples:

  dkrpm pack 6 htop.spec -V -1
  dkrpm unpack 7 htop-2.0.2-0.el7.src.rpm
  dkrpm check 6 htop.spec
  dkrpm debug 6 htop.spec
```

## License

MIT
