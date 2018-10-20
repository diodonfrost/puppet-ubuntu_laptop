# Install awscli package

class ubuntu_laptop::packages::awscli {

  package {'awscli':
    ensure   => installed,
    provider => snap,
  }
}
