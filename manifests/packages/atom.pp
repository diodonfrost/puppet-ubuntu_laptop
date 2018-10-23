# Install text editor atom

class ubuntu_laptop::packages::atom {

  # Install  Atom with snap
  package {'atom':
    ensure   => installed,
    provider => snap,
  }
}
