# local_rand_string

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Simple random string generator that uses defined seed and randomly generated 
salt, which is stored on each machine localy.

Tested only on master-less setups.

## Usage

$string = local_rand_string('puppet', 64)
notify { "Generated string is: ${string}": }

## Reference

When writing this module, we took an inspiration from:
 - https://github.com/olavmrk/puppet-fqdn_rand_uuid

## Limitations

This module has only been tested on master-less setup. We are not aware how
it is gonna behave with puppet master. We don't have any.

## Development

Feel free to create pull request if some functionality should be added, we
will be more than happy to merge it.

Pull request should contain tests if possible.
