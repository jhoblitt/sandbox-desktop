class site::profile::desktop {
  include ::hipchat
  include ::google_talkplugin
  include ::adoberepo
  include ::bluejeans
  include ::java
  include ::mono
  include ::google_chrome

  package { 'flash-plugin': ensure => present }

  class { 'selinux': mode       => 'permissive' }
  class { 'timezone': timezone  => 'US/Arizona' }
  class { 'tuned': profile      => 'desktop' }
  #class { 'firewall': ensure    => 'stopped' }
  #resources { 'firewall': purge => true }

  class { '::ruby::dev':
    bundler_ensure => 'latest',
  }

  $pkg = [
    'firefox',
    'thunderbird',
    'hexchat',
    'rhythmbox',
    'pidgin',
    'pidgin-otr',
    'google-talkplugin',
    'git',
  ]

  ensure_packages($pkg)
}
