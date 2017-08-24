# About

Dockerized RPM building tool for any platforms based on [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

## Requirements

- Docker 1.11 or higher

## Getting started

Build Docker images with RPMBuilder locally.

```shell
cd rpmbuilder6/
docker build -t rpmbuilder:6 .

cd ../rpmbuilder7/
docker build -t rpmbuilder:7 .
```

Pay attention, image name is mandatory. You can easily change the name in `dkrpm` shell script in `DKR_RPMB_PREFIX` variable, but tag should be the major version of RHEL/CentOS.

```shell
[sudo] cp dkrpm /usr/local/bin/
[sudo] chmod +x /usr/local/bin/
```

Done. Now you can invoke `dkrpm` command to build your RPM.

## Available repositories

Docker images provide the following repositories by default.

#### CentOS/RHEL 6

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)
- [Software Collections](https://linux.web.cern.ch/linux/other.shtml)

#### CentOS/RHEL 7

- [EPEL](https://fedoraproject.org/wiki/EPEL)
- [ESSENTIAL KAOS](https://github.com/essentialkaos/kaos-repo)

_In case you need to setup your custom repository, please make changes to `Dockerfile` and build your own image._

## Usage

```
Usage: dkrpm command image source <option>

Commands:

  p or pack             Create RPM package from spec file
  u or unpack           Unpack source files from SRPM package
  c or check            Validate spec file using RPMLint
  h or help             Show detailed information about command

See "dkrpm help <command>" for information on a specific command.

Examples:

  dkrpm pack 6 htop.spec -V -1
  dkrpm unpack 7 htop-2.0.2-0.el7.src.rpm
  dkrpm check 6 htop.spec
```

## License

MIT
