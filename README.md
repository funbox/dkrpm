# dkrpm

Shell wrapper for [RPMBuilder](https://github.com/essentialkaos/rpmbuilder).

<p align="center"><a href="#demo">Demo</a> • <p align="center"><a href="#requirements">Requirements</a> • <a href="#installation">Installation</a> • <a href="#environment-variables">Environment variables</a> • <a href="#usage">Usage</a> • <a href="#shellcheck-status">ShellCheck Status</a> • <a href="#credits">Credits</a> • <a href="#license">License</a></p>

## Demo

[![demo](demo.gif)](#usage)

## Requirements

- [Docker](https://docker.com/)
- [Make](https://www.gnu.org/software/make/manual/make.html)

## Installation

Install `dkrpm` shell script to the directory. Use `DESTDIR` parameter to override default path.

```shell
sudo make install
```

## Environment variables

| Env var | Status | Default |
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
| `master` | [![Build Status](https://github.com/funbox/dkrpm/workflows/ci/badge.svg?branch=master)](https://github.com/funbox/dkrpm) |
| `develop` | [![Build Status](https://github.com/funbox/dkrpm/workflows/ci/badge.svg?branch=develop)](https://github.com/funbox/dkrpm) |

## Credits

[Anton Novojilov](https://github.com/andyone) for RPMBuilder and ESSENTIAL KAOS repository.

## License

MIT

[![Sponsored by FunBox](https://funbox.ru/badges/sponsored_by_funbox_centered.svg)](https://funbox.ru)
