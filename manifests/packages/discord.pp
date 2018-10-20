# Install voice and text chat Discord.

class ubuntu_laptop::packages::discord {

  package {'dsicord':
    ensure   => installed,
    provider => snap,
  }
}
