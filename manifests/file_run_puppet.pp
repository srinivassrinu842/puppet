file { '/usr/local/bin/run-puppet' : 
     source => '/var/tmp/puppet/files/run-puppet.sh',
     require => Cron['run-puppet'],
     mode => '750',
}
cron { 'run-puppet' :
      command => '/usr/local/bin/run-puppet',
      user    => 'root',
      minute  => '*/15',
} 
