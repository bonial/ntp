# == Class: ntp
#
# setup and start ntp daemon

class ntp($geo_cluster = $::topscope_geocluster) {

  case $geo_cluster {
    'de': {
      $public_ntp_servers = [
        '0.de.pool.ntp.org',
        '1.de.pool.ntp.org',
        '2.de.pool.ntp.org',
        '3.de.pool.ntp.org',
      ]
    }
    default: {
      fail("geo_cluster ${geo_cluster} not supported yet for module ntp")
    }
  }

  include 'ntp::config'

  Class['ntp::config'] ~>
  Class['ntp::service']

}
