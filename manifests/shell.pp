# Download and configure oh-my-zsh
class ubuntu_laptop::shell {

  # Convert fact in array
  (split($users, ',') + 'root').each | $user | {

    # Specify root and user home directory
    if $user == 'root' { $home = '/root' } else { $home = "/home/${user}"}

    # Download oh-my-zsh for each users
    exec { "Download oh-my-zsh for user ${user}":
      command => 'git clone https://github.com/robbyrussell/oh-my-zsh ${home}/.oh-my-zsh',
      path    => ['/usr/bin', '/usr/sbin', '/bin',],
      user    => $user,
      creates => "${home}/.oh-my-zsh",
      require => [ Package['wget'], Package['git'] ],
    }

    # Configure oh my zsh
    file { "${home}/.oh-my-zsh/templates/zshrc.zsh-template":
      ensure  => present,
      target  => "${home}/.zshrc",
      owner   => $user,
      group   => $user,
      require => Exec["Download oh-my-zsh for user ${user}"],
    }

    exec { "change shell for user ${user}":
      command => "chsh -s /usr/bin/zsh ${user}",
      path    => ['/usr/bin', '/usr/sbin', '/bin',],
      onlyif  => "getent passwd ${user} | grep bash",
      require => Package['zsh'],
    }
  }
}
