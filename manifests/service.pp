class orlo::service(
  $ensure = running,
){
  service{ 'orlo':
    ensure   => $ensure,
  }

}

# vim:sw=2:ts=2:et:
