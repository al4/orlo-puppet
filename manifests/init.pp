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
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'orlo':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
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
  $config         = $::orlo::params::config,
  $config_path    = $::orlo::params::config_path,
  $manage_package = false,
  $manage_service = false,
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
