class gearman::params {

    case $::operatingsystem {
        /(Ubuntu|Debian)/: {
            $package_name = ['gearman-job-server','gearman-tools']
            $config_file = '/etc/default/gearman-job-server'
            $service_name = 'gearman-job-server'
        }
        default: {
          fail('Undefined operatingsystem')
        }
    }

    $job_retries   = 0
    $port          = 4730
    $listen        = '0.0.0.0'
    $maxfiles      = 1024
    $threads       = 4
    $worker_wakeup = 0
}
