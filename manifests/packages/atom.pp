# Install text editor atom
class ubuntu_laptop::packages::atom (
  Array $atom_packages = $::ubuntu_laptop::params::atom_packages,

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
}
