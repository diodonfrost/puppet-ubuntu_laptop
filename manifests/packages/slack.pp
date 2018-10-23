# Install text chat Slack.
class ubuntu_laptop::packages::slack {

  # Install Slack with snap
  package {'slack':
    ensure   => installed,
    provider => snap,
  }
}
