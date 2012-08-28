class gearman::install {
  package {
    $gearman::package_name:
      ensure => present,
  }

  file {
    '/etc/gearman.d/':
      ensure => directory,
      owner  => 'root',
      group  => 'root';
  }

  if($gearman::firewall)
  {
    File <<| tag == $gearman::firewall_id |>>
  }

  file {
    '/usr/local/sbin/gearman-firewall':
      owner    => root,
      group    => root,
      mode     => '0755',
      content  => template('gearman/firewall');
  }

  exec {
    'update_gearman_firewall':
      command     => '/usr/local/sbin/gearman-firewall',
      refreshonly => true;
  }

}
