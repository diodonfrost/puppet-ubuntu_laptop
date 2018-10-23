# Main class
class ubuntu_laptop {

  include ::snapd
  include apt
  include ubuntu_laptop::packages::install

  Class['snapd']
  -> Class['apt']
  -> Class['ubuntu_laptop::packages::install']
}
