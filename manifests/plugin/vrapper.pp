# Class: eclipse::plugin::vrapper
#
# This class installs the Eclipse plugin vrapper
#
# Sample Usage:
#
#  include eclipse::plugin::vrapper
#
class eclipse::plugin::vrapper (
  $method = 'package',
  $repository = 'http://vrapper.sourceforge.net/update-site/stable',
  $ensure = present
) {

  include eclipse
  include eclipse::params

  eclipse::plugin { 'vrapper':
    iu         => 'net.sourceforge.vrapper.feature.group',
    method     => $method,
    repository => $repository,
  }

  if $method == 'p2_director' {
    eclipse::plugin { 'vrapper-surround':
      iu         => 'net.sourceforge.vrapper.plugin.surround.feature.group',
      method     => $method,
      repository => $repository,
      require    => Eclipse::Plugin['vrapper']
    }
  }

}
