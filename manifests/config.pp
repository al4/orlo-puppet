class orlo::config (
  $config = $::orlo::config,
  $config_path = $::orlo::config_path,
){

  validate_hash($config)
  $defaults = { 'path' => $config_path }
  create_ini_settings($config, $defaults)

}

# vim:sw=2:ts=2:et:
