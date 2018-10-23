# Install Tusk.
class ubuntu_laptop::packages::tusk {

  # Install Tusk with snap
  package {'tusk':
    ensure   => installed,
    provider => snap,
  }
}
