# Install voice and text chat Discord.

class ubuntu-laptop::packages::discord {

  package {'dsicord':
    ensure   => installed,
    provider => snap,
  }
}
