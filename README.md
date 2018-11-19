# puppet-ubuntu_laptop

[![Gem Version](https://badge.fury.io/rb/test-kitchen.svg)](http://badge.fury.io/rb/test-kitchen)
[![Build Status](https://travis-ci.org/diodonfrost/puppet-ubuntu_laptop.svg?branch=master)](https://travis-ci.org/diodonfrost/puppet-ubuntu_laptop)

Welcome to your new module. A short overview of the generated parts can be found in the PDK documentation at <https://puppet.com/pdk/latest/pdk_generating_modules.html> .

The README template below provides a starting point with details about what information to include in your README.

#### Table of Contents

1.  [Description](#description)
2.  [Setup - The basics of getting started with laptop](#setup)
    -   [What this module affects](#What-this-module-affects)
    -   [Setup requirements](#setup-requirements)
    -   [Beginning with ubuntu_laptop](#Beginning-with-ubuntu_laptop)
3.  [Usage - Configuration options and additional functionality](#usage)
4.  [Local Testing](#Local-Testing)
    -   [Testing with Docker](#Testing-with-Docker)
    -   [Testing with Virtualbox](#Testing-with-Virtualbox)
5.  [Limitations - OS compatibility, etc.](#limitations)
6.  [License](#License)
7.  [Development - Guide for contributing to the module](#development)

## Description

This Puppet module installs and configures most of the software I use on my Ubuntu laptop for Cloud and software development.

## Setup

### What this module affects

-   Packages install for development
-   User home directory for Atom packages plugins (/home/user/.atom/packages)
-   Remplace shell user by oh-my-zsh [https://ohmyz.sh/](https://ohmyz.sh/)

### Setup Requirements

This module was developed using Puppet 6.0.2 Backwards compatibility is not guaranteed.

Package manager Snap [https://snapcraft.io/](https://snapcraft.io/) must be present on target system and service snapd must be running.

### Beginning with ubuntu_laptop

To have Puppet install software with the default parameters, declare the ubuntu_laptop class:

```puppet
class { 'ubuntu_laptop' }
```

## Usage

The default ubuntu_laptop class install this packages:
-   ansible
-   atom
-   aws-cli
-   discord
-   docker
-   gcloud
-   java
-   minikube
-   packer
-   slack
-   spotify
-   tusk
-   vagrant

## Local Testing
The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system. See Get started for a Docker package suitable to for your system.

You can also use vagrant and Virtualbox to run tests locally. You will have to install Virtualbox and Vagrant on your system. See Vagrant Downloads for a vagrant package suitable for your system. For all our tests we use test-kitchen. If you are not familiar with test-kitchen please have a look at their guide.

Next install test-kitchen:
```shell
# Install dependencies
gem install bundler
bundle install
```

### Testing with Docker
```shell
# fast test on one machine
kitchen test default-ubuntu-18-04

# Build environment and apply puppet manifest
kitchen converge default-ubuntu-18-04

# Launch inspec tests
kitchen verify default-ubuntu-18-04
```

### Testing with Virtualbox
```shell
# Test with virtualbox
export KITCHEN_YAML=".kitchen-vagrant.yml"
kitchen test default-ubuntu-18-04

# Build environment and apply puppet manifest
kitchen converge default-ubuntu-18-04

# Launch inspec tests
kitchen verify default-ubuntu-18-04
```

## Limitations

Tested only on Ubuntu 18.04 and Ubuntu 16.04.

## License

Apache 2

## Development

This module was created in 2018 by diodonfrost.
