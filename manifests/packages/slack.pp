# Install  text chat Slack.
class ubuntu_laptop::packages::slack {

  package {'slack':
    ensure   => installed,
    provider => snap,
  }
}
