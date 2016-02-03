# == Class: ntp::config
#
# setup /etc/ntp.conf

class ntp::config {

  package { 'ntp':
    ensure => installed,
  }

  File {
    mode => '0644'
  }

  file { '/etc/init.d/ntp':
    ensure => present,
  }

  file { '/etc/ntp.conf':
    content => template('ntp/ntp.conf.erb'),
  }

}
