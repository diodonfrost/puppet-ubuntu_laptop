# Install  text chat Slack.
class ubuntu-laptop::packages::slack {

  package {'slack':
    ensure   => installed,
    provider => snap,
  }
}
