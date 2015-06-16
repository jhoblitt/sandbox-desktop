class site::profile::desktop {
  include ::hipchat
  include ::google_talkplugin

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
    'java-1.8.0-openjdk-devel',
    'google-talkplugin',
    'git',
  ]

}

