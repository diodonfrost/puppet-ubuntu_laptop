# Main class
class ubuntu_laptop inherits ::ubuntu_laptop::params {

  include ::snapd
  include ubuntu_laptop::packages::install

  Class['snapd']
  -> Class['ubuntu_laptop::packages::install']
}
