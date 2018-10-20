# Install ansible package

class ubuntu-laptop::packages::ansible {

  package {'ansible':
    ensure   => installed,
  }
}
