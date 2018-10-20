# Install Google cloud repos and packages

class ubuntu_laptop::packages::gcloud {

  apt::source { 'google cloud repo':
    comment  => 'google cloud repo',
    location => 'http://packages.cloud.google.com/apt',
    release  => "cloud-sdk-$fact['os']['distro']['codename']",
    repos    => 'main',
    key      => {
      'source' => 'https://packages.cloud.google.com/apt/doc/apt-key.gpg',
    },
    include  => {
      'deb' => true,
    },
  }
}
