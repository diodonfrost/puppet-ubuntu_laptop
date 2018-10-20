# Install Spotify.
class ubuntu_laptop::packages::spotify {

  package {'spotify':
    ensure   => installed,
    provider => snap,
  }
}
