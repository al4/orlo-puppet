class orlo::params(
  $config = {
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
  },
  $config_path = '/etc/orlo/orlo.ini',
){
}
