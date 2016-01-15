class orlo::install {

  package { 'orlo':
    ensure => present,
    before => Inifile['/etc/orlo/orlo.ini'],
  }

}

 # vim:sw=2:ts=2:et:
