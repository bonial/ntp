# == Class: ntp::service
#
# starts ntp daemon

class ntp::service {

  service { 'ntp':
    ensure => running,
  }

}
