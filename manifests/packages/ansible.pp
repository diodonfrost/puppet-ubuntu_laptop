# Install ansible package
class ubuntu_laptop::packages::ansible {

  # Install ansible
  package {'ansible':
    ensure   => installed,
  }
}
