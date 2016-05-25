
class lab {
	package {'git':
       ensure => installed,
       provider => 'chocolatey',
	}
	package {'vagrant':
       ensure => installed,
       provider => 'chocolatey,'
	}
	package {'virtualbox':
       ensure => installed,
       provider => 'chocolatey,'
	}
	package {'conemu':
       ensure => installed,
       provider => 'chocolatey,'
	}
	package {'atom':
       ensure => installed,
       provider => 'chocolatey,'
	}
  }