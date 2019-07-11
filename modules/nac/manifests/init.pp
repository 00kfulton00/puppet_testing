#class nac
class nac (
) {
  include zabbix::sender
 
 class {'python':
    python_version => '3.6.8',
  }

  python::pip {'packaging':
    python_version => '3',
    pkgname => 'packaging',
  }
 }
