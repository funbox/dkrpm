# About

Dockerized RPM building tool for any platforms based on [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

## Requirements

- Docker 1.11 or higher

## Getting started

Build Docker images with RPMBuilder locally.

```shell
cd rpmbuilder6/
docker build -t rpmbuilder6 .

cd ../rpmbuilder7/
docker build -t rpmbuilder7 .
```

Pay attention, image name is mandatory. You can easily change the name in `dkrpm` shell script in `DKR_RPMB_PREFIX` variable, but image name should be ended by number of major RHEL/CentOS version.

```shell
[sudo] cp dkrpm /usr/local/bin/
[sudo] chmod +x /usr/local/bin/
```

Done.

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
