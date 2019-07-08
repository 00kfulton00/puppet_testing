#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    ensure      => 'latest',
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
