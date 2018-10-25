# Download and configure oh-my-zsh
class ubuntu_laptop::shell {

  # Convert fact in array
  (split($users, ',') + 'root').each | $user | {

    # Specify root and user home directory
    if $user == 'root' { $home = '/root' } else { $home = "/home/${user}"}

    # Download oh-my-zsh for each users
    exec { "Download oh-my-zsh for user ${user}":
      command => "git clone https://github.com/robbyrussell/oh-my-zsh ${home}/.oh-my-zsh",
      path    => ['/usr/bin', '/usr/sbin', '/bin',],
      user    => $user,
      creates => "${home}/.oh-my-zsh",
      require => [ Package['git'], Package['zsh'] ],
    }

    # Configure oh my zsh
    file { "${home}/.zshrc":
      ensure  => file,
      source  => "${home}/.oh-my-zsh/templates/zshrc.zsh-template",
      owner   => $user,
      group   => $user,
      require => Exec["Download oh-my-zsh for user ${user}"],
    }

    # Change default user shell by zsh
    user { $user:
      ensure  => present,
      shell   => '/usr/bin/zsh',
      require => Package['zsh'],
    }
  }
}
