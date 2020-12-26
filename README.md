# About

Shell wrapper for [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

<p align="center"><a href="#demo">Demo</a> • <a href="#requirements">Requirements</a> • <a href="#getting-started">Getting started</a> • <a href="#environment-variables">Environment variables</a> • <a href="#usage">Usage</a> • <a href="#shellcheck-status">ShellCheck Status</a> • <a href="#credits">Credits</a> • <a href="#license">License</a></p>

## Requirements

- Docker

## Getting started

Install `dkrpm` shell script to one of available `$PATH` directory.

```shell
sudo cp dkrpm /usr/local/bin/dkrpm
sudo chmod +x /usr/local/bin/dkrpm
```

## Environment variables

| Envvar | Status | Default |
|------------|--------|--------|
| `DOCKER_RPMBUILDER_IMAGE` | [RPMBuilder](https://github.com/essentialkaos/rpmbuilder) Docker image | `essentialkaos/rpmbuilder:centos7` |
| `DOCKER_PERFECTO_IMAGE` | [Perfecto](https://github.com/essentialkaos/perfecto) Docker image | `essentialkaos/perfecto:centos7` |

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
| `master` | [![Build Status](https://github.com/gongled/dkrpm/workflows/ci/badge.svg?branch=master)](https://github.com/gongled/dkrpm) |
| `develop` | [![Build Status](https://github.com/gongled/dkrpm/workflows/ci/badge.svg?branch=develop)](https://github.com/gongled/dkrpm) |

## Credits

[Anton Novojilov](https://github.com/andyone) for RPMBuilder and ESSENTIAL KAOS repository.

## License

MIT
