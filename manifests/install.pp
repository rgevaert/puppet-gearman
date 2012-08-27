class gearman::install {
    package {
      $gearman::package_name:
        ensure => present,
    }
}
