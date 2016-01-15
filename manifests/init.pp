# == Class: orlo
#
# Install and configure Orlo
#
# === Parameters
#
# Document parameters here.
#
# [*config*]
#   Configuration hash of orlo settings. See Orlo documentation for options.
#
# [*config_path*]
#   Path to orlo.ini (/etc/orlo/orlo.ini)
#
# [*manage_package*]
#   Whether or not to manage the package
#
# [*manage_service*]
#   Whether or not to manage the service
#
# === Examples
#
#  class { 'orlo':
#    manage_package => false,
#    manage_service => false,
#  }
#
# === Authors
#
# Alex Forbes <alforbes@ebay.com>
#
# === Copyright
#
# Copyright 2016 eBay Classifieds Group, unless otherwise noted.
#
class orlo (
  Hash[String,Hash] $config_hash    = {},
  String            $config_path    = $::orlo::params::config_path,
  Boolean           $manage_package = false,
  Boolean           $manage_service = false,
) inherits orlo::params {

  if $manage_package {
    include orlo::install
  }

  if $manage_service{
    include orlo::service
  }

  include orlo::config
}

# vim:sw=2:ts=2:et:
