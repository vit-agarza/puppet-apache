# @summary 
#   Operating system-related variables (and others)
class apache::params {
  $install_ensure = 'present'
# case $facts['os']['family']
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian' : {
      $install_name = 'apache2'
    }
  }
}
