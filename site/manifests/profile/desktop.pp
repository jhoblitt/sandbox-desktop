class site::profile::desktop {
  include ::hipchat
  include ::google_talkplugin
  include ::bluejeans
  include ::java
  include ::mono
  include ::google_chrome
  include ::gcc
  include ::flash
  include ::rvm
  include ::rvm::dependencies

  class { 'selinux': mode       => 'disabled' }
  class { 'timezone': timezone  => 'US/Arizona' }
  class { 'tuned': profile      => 'desktop' }
  #class { 'firewall': ensure    => 'stopped' }
  #resources { 'firewall': purge => true }

  class { '::ruby::dev':
    bundler_ensure => 'latest',
  }

  $pkg = [
    'aspell',
    'aspell-en',
    'firefox',
    'geeqie',
    'gimp',
    'google-talkplugin',
    'graphviz',
    'hexchat',
    'ltunify',
    'pidgin',
    'pidgin-otr',
    'rhythmbox',
    'ShellCheck',
    'thunderbird',
    'vim-X11',
  ]

  ensure_packages($pkg)
}
