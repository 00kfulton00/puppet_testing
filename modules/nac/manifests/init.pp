#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    version     => '3.7.0',
    pip         => '19.1.1',
    dev         => 'absent',
    virtualenv  => 'absent',
    gunicorn    => 'absent',
    }
    
    python::pip { 'packaging' :
      pkgname     => 'packaging',
      ensure      => '19.0',
      }
 }
