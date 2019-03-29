# Install text editor atom
class ubuntu_laptop::packages::atom (
  Array $atom_packages     = $::ubuntu_laptop::params::atom_packages,
  Array $atom_os_packages  = $::ubuntu_laptop::params::atom_os_packages,
  Array $atom_pip_packages = $::ubuntu_laptop::params::atom_pip_packages,

  ){
  # Install  Atom with snap
  package {'atom':
    ensure   => installed,
    provider => snap,
  }

  # Install Atom packages
  split($users, ',').each | $user | {
    $atom_packages.each | $apm_package | {
      exec {"Install atom package ${apm_package} for user ${user}":
        command => "/snap/bin/apm install ${apm_package}",
        user    => $user,
        creates => "/home/${user}/.atom/packages/${apm_package}",
        require => Package['atom'],
      }
    }
  }

  # Install atom packages with os package manager
  package {$atom_os_packages:
    ensure => installed,
  }

  # Install atom packages with python-pip
  package {$atom_pip_packages:
    ensure   => installed,
    provider => 'pip3',
    require  => Package['python3-pip'],
  }
}
