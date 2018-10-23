# Install voice and text chat Discord.

class ubuntu_laptop::packages::discord {

  # Install Discord with snap
  package {'discord':
    ensure   => installed,
    provider => snap,
  }
}
