class swift::proxy::tempauth(
  $accounts = ['user_admin_admin = admin .admin .reseller_admin', 'user_test_tester = testing .admin']
) {

  concat::fragment { 'swift-proxy-swauth':
    target  => '/etc/swift/proxy-server.conf',
    content => template('swift/proxy/tempauth.conf.erb'),
    order   => '01',
  }

}
