# Install awscli package

class ubuntu-laptop::packages::awscli {

  package {'awscli':
    ensure   => installed,
    provider => snap,
  }
}
