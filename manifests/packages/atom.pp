# Install text editor atom

class ubuntu_laptop::packages::atom {

  package {'atom':
    ensure   => installed,
    provider => snap,
  }
}
