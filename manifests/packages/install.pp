# Class for install packages
class ubuntu_laptop::packages::install (
  Array $os_packages = $::ubuntu_laptop::params::os_packages,

  ) {
  # Install os packages
  package {$os_packages:
    ensure => installed,
  }

  # Install java virtual machine
  class { 'java':
    distribution => 'jre',
  }

  include ubuntu_laptop::packages::ansible
  include ubuntu_laptop::packages::atom
  include ubuntu_laptop::packages::awscli
  include ubuntu_laptop::packages::discord
  include ubuntu_laptop::packages::docker
  include ubuntu_laptop::packages::gcloud
  include ubuntu_laptop::packages::minikube
  include ubuntu_laptop::packages::packer
  include ubuntu_laptop::packages::slack
  include ubuntu_laptop::packages::spotify
  include ubuntu_laptop::packages::tusk
  include ubuntu_laptop::packages::vagrant
}
