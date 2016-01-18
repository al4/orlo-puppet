class orlo::install(
  $package_name = 'orlo',
){

  package { ${package_name}:
    ensure  => present,
    before  => Inifile['/etc/orlo/orlo.ini'],
    require => File['/etc/orlo'],
  }

  file { '/etc/orlo':
    ensure => directory,
    before => Class['orlo::config'],
  }
}

# vim:sw=2:ts=2:et:
