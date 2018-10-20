# Install Spotify.
class ubuntu-laptop::packages::spotify {

  package {'spotify':
    ensure   => installed,
    provider => snap,
  }
}
