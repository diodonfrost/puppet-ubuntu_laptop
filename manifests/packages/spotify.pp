# Install Spotify.
class ubuntu_laptop::packages::spotify {

  # Install Spotify with snap
  package {'spotify':
    ensure   => installed,
    provider => snap,
  }
}
