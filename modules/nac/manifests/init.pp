#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    version     => 'system',
    pip         => 'present',
    dev         => 'absent',
    virtualenv  => 'absent',
    gunicorn    => 'absent',
    }
    
    python::pip { 'packaging' :
      pkgname     => 'packaging',
      ensure      => '19.0',
      }
 }
