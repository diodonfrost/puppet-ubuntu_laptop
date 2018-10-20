# Install ansible package

class ubuntu_laptop::packages::ansible {

  package {'ansible':
    ensure   => installed,
  }
}
