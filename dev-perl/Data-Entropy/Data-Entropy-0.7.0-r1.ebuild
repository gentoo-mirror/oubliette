# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DIST_AUTHOR=ZEFRAM
DIST_VERSION=0.007

inherit perl-module

DESCRIPTION="entropy (randomness) management"

SLOT="0"
KEYWORDS="~amd64 ~x86"

comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/Crypt-Rijndael
	>=dev-perl/Data-Float-0.8.0
	$(comment virtual/perl-Errno 1.0.0)
	$(comment virtual/perl-Exporter)
	dev-perl/HTTP-Lite
	>=virtual/perl-IO-1.03 $(comment 1.30.0 IO::File)
	dev-perl/Params-Classify
	$(comment virtual/perl-constant)
	$(comment virtual/perl-integer)
	virtual/perl-parent
	$(comment perl 5.6 w/ strict and warnings)
"
DEPEND="
	${COMMON_DEPEND}

	$(comment CONFIGURE REQUIRES)
	dev-perl/Module-Build
	$(comment perl 5.6 w/ strict and warnings)

	$(comment BUILD REQUIRES)
	dev-perl/Crypt-Rijndael
	>=dev-perl/Data-Float-0.8.0
	>=virtual/perl-IO-1.03 $(comment 1.30.0 IO::File)
	dev-perl/Module-Build
	virtual/perl-Test-Simple $(comment Test::More)
	$(comment virtual/perl-constant)
	$(comment perl 5.6 w/ strict and warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
BDEPEND="${RDEPEND}
	dev-perl/Module-Build
"
