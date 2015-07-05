class site::profile::ssh {
  class { '::ssh':
    storeconfigs_enabled => false,
    server_options       => {
      'PermitRootLogin' => 'no',
    },
  }
}
