# Install awscli package
class ubuntu_laptop::packages::awscli {

  # Install awscli with snap
  package {'aws-cli':
    ensure   => installed,
    provider => snap,
  }
}
