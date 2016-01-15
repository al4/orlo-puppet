# orlo

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with orlo](#setup)
    * [Beginning with orlo](#beginning-with-orlo)
4. [Limitations - OS compatibility, etc.](#limitations)

## Overview

A Pupppet module to install and configure Orlo.

## Module Description

This module is ver basic at present. It has only been tested on Debian, and
assumes that the .deb is in a repo that is already in your sources (as Orlo
currently does not host a Debian repository, you will need to add it to your
own).

Does not configure the database, as that would be prescriptive, both in terms
of the database you use and how it is installed.

## Setup

### Beginning with orlo

```puppet
class { 'orlo':
  manage_package => true,
  manage_service => true,
}
```

You will probably want to define the configuration, which is a simple hash fed 
to the puppetlabs inifile module.

You can also set orlo::config in hiera, see puppetlabs-inifile for more info.

If you have installed via pip, you will want to set manage_package and 
manage_service to false.

## Limitations

Only tested on Debian Jessie.

