# Install Google cloud sdk and kubectl

class ubuntu_laptop::packages::gcloud {

  # Install google cloud sdk
  package {'google-cloud-sdk':
    ensure   => installed,
    provider => snap,
  }

  # Install helm
  package {'helm':
    ensure   => installed,
    provider => snap,
  }

  # Install kubectl
  package {'kubectl':
    ensure   => installed,
    provider => snap,
  }
}
