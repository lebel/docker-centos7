#!/bin/bash 

# Add all ISC Repos

zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/update/12.3 "ISC - 12.3 Update"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/distribution/12.3/repo/oss "ISC - 12.3 Distribution OSS"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/distribution/12.3/repo/non-oss "ISC - 12.3 Distribution NON-OSS"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/update/12.3-non-oss "ISC - 12.3 Update NON-OSS"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/update/12.3-test "ISC - 12.3 Update Test"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/pacman "ISC - 12.3 Pacman"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/perl "ISC - 12.3 Perl"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/python "ISC - 12.3 Python"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/nvidia "ISC - nVidia"
zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys addrepo -f http://nemesis.isc.ac.uk/suse123repo/google "ISC - Google Earth"

#
#   EOF
#