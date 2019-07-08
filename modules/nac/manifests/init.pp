#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    version     => '36',
    pip         => 'latest',
    dev         => 'absent',
    virtualenv  => 'absent',
    gunicorn    => 'absent',
    }
    
    python::pip { 'packaging' :
      pkgname     => 'packaging',
      ensure      => '19.0',
      }
 }
