# Class for install packages
class ubuntu-laptop::packages::install (
  Array $os_packages,

  ) {
  # Install os packages
  package {$os_packages:
    ensure => installed,
  }

  include ubuntu-laptop::packages::ansible
  include ubuntu-laptop::packages::atom
  include ubuntu-laptop::packages::awscli
  include ubuntu-laptop::packages::discord
  include ubuntu-laptop::packages::docker
  include ubuntu-laptop::packages::gcloud
  include ubuntu-laptop::packages::minikube
  include ubuntu-laptop::packages::slack
  include ubuntu-laptop::packages::spotify
  include ubuntu-laptop::packages::vagrant
}
