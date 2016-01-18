class orlo::install(
  $package_name = 'orlo',
){

  package { ${package_name}:
    ensure => present,
    before => Inifile['/etc/orlo/orlo.ini'],
  }

}

# vim:sw=2:ts=2:et:
