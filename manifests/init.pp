# Main class
class ubuntu_laptop {

  include ::snapd
  include ubuntu_laptop::packages::install

  Class['snapd']
   -> Class['ubuntu-laptop::packages::install']
}
