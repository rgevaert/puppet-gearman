class gearman::client::php5 ( $firewall_id = 'gearman_client')
{
  package {
    'php5-gearman':
      ensure => installed
  }

  @@file { "/etc/gearman.d/$::fqdn":
    content => "$f::qdn\n",
    tag     => $gearman::firewall_id,
    notify  => Exec['update_gearman_firewall'];
  }
}
