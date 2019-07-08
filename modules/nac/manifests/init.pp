#class nac
class nac (
) {
  include zabbix::sender
  
  class { 'python':
    version     => '36',
    pip         => 'latest',
    }
    
    python::pip { 'packaging' :
      pkgname     => 'packaging',
      ensure      => '19.0',
      }
 }
