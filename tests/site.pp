ldap_entry { 'uid=cody,ou=people,dc=puppetlabs,dc=net':
  ensure      => present,
  objectclass => [
    'organizationalPerson',
    'inetOrgPerson',
    'posixAccount',
    'person',
    'top',
  ],
  attributes  => {
    'employeeNumber'   => '10000000001',
    'sn'               => 'Herriges',
    'l'                => 'Portland',
    'gidNumber'        => '1000000001',
    'mail'             => 'cody@puppetlabs.com',
    'telephoneNumber'  => '503-555-1234',
    'givenName'        => 'Cody',
    'uid'              => 'cody',
    'uidNumber'        => '1000000001',
    'businessCategory' => 'Operations',
    'cn'               => 'Cody Herriges',
    'st'               => 'Oregon',
    'homeDirectory'    => '/home/cody',
    'userPassword'     => '{SSHA}mHuHoMiy1Bm4nRHDBwVjkyKnvUJVdorEdP9LXQ==',
    'title'            => 'Operations Engineer',
  },
  admin_dn    => 'uid=admin,ou=system',
  admin_pw    => 'foobar',
  server      => 'ldap-module.vm.vmware',
}
