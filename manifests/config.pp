class orlo::config(
  $config_hash = $::orlo::config_hash,
  $config_path = $::orlo::config_path,
){

  $config_default = {
    'main' => {
      'propagate_exceptions' => 'true',
      'time_format' => '%Y-%m-%dT%H:%M:%SZ',
      'time_zone' => 'UTC',
    },
    'db'    => {
      'uri' => 'sqlite://',
    },
    'logging' => {
      'debug' => 'false',
      'file'  => '/var/log/orlo/app.log',
    }
  }

  validate_hash($config_hash)
  $orlo_config = merge($config_default, $config_hash)

  $defaults = { 'path' => $::orlo::config_path }
  create_ini_settings($orlo_config, $defaults)

}

# vim:sw=2:ts=2:et:
