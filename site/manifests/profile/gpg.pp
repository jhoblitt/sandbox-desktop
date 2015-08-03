class site::profile::gpg {
  # gnupg2-smime is needed for smartcard support
  $pkg = [
    'gnupg2-smime',
    'gnupg2',
    'ykpers',
    'ykclient',
  ]

  ensure_packages($pkg)
}
