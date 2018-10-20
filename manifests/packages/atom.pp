# Install text editor atom

class ubuntu-laptop::packages::atom {

  package {'atom':
    ensure   => installed,
    provider => snap,
  }
}
