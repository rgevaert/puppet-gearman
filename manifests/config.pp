class gearman::config {
  file {
    $gearman::params::config_file:
        ensure  => present,
        owner   => root,
        group   => root,
        content => template('gearman/default.erb');
  }
}
