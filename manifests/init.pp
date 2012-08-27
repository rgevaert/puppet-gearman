class gearman (
    $job_retries   = $gearman::params::job_retries,
    $port          = $gearman::params::port,
    $listen        = $gearman::params::listen,
    $threads       = $gearman::params::threads,
    $maxfiles      = $gearman::params::maxfiles,
    $worker_wakeup = $gearman::params::worker_wakeup,
    $package_name  = $gearman::params::package_name,
    $config_file   = $gearman::params::config_file,
    $service_name  = $gearman::params::service_name,
    $queue_type    = '',
    $queue_params  = '',
  ) inherits gearman::params {

  class {'gearman::install':;}
    ~> class {'gearman::config':;}
    ~> class {'gearman::service':;}
}
