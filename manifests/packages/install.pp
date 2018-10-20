# Class for install packages
class ubuntu_laptop::packages::install (
  Array $os_packages,

  ) {
  # Install os packages
  package {$os_packages:
    ensure => installed,
  }

  include ubuntu_laptop::packages::ansible
  include ubuntu_laptop::packages::atom
  include ubuntu_laptop::packages::awscli
  include ubuntu_laptop::packages::discord
  include 'docker'
  include ubuntu_laptop::packages::gcloud
  include ubuntu_laptop::packages::minikube
  include ubuntu_laptop::packages::slack
  include ubuntu_laptop::packages::spotify
  include ubuntu_laptop::packages::vagrant
}
