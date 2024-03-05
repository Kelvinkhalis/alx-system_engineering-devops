#!/usr/bin/env bash
#using ppupet to connect without password

file { '/etc/ssh/sssh_config':
 ensure => present,
}

file_line { 'Turn off password auth':
 path     => '/etc/ssh/ssh_config',
 line     => 'PasswordAuthenticatio no ',
 match    => '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
 path     => '/etc/ssh/ssh_config',
 line     => 'IdentityFile ~/.ssh/school',
 match    => '^#IdentityFiile',
