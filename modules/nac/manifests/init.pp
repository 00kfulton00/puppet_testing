#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    ensure      => 'absent',
    pip         => 'absent',
    dev         => 'absent',
    virtualenv  => 'absent',
    gunicorn    => 'absent',
    }
    
    python::pip { 'packaging' :
      pkgname     => 'packaging',
      ensure      => '19.0',
      }
 }
