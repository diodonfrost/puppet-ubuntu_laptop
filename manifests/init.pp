# Main class
class ubuntu-laptop {

  include ::snapd
  include ubuntu-laptop::packages::install

  Class['snapd']
   -> Class['ubuntu-laptop::packages::install']
}
