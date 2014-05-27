# Class: eclipse::plugin::ansi_console
#
# This class installs the Eclipse plugin ansi-console
#
# Sample Usage:
#
#  include eclipse::plugin::ansi_console
#
class eclipse::plugin::ansi_console (
  $method = 'package',
  $repository = 'http://www.mihai-nita.net/eclipse',
  $ensure = present
) {

  include eclipse
  include eclipse::params


  eclipse::plugin { 'ansi-console':
    iu         => 'net.mihai-nita.ansicon.feature.group',
    method     => $method,
    repository => $repository,
  }
}
