# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils virtualx
MY_PN="tdbcmysql"
#TDBC MySQL - 1.1.1 2019-11-20 commit version
MY_PV="78b6ff77cc"
#TEA tclconfig - 2019-11-14 commit version
TEA_V="11d74eabd7"

DESCRIPTION="Tcl Database Connectivity MySQL Driver"
HOMEPAGE="https://core.tcl.tk/tdbcmysql"
SRC_URI="https://core.tcl.tk/tdbcmysql/tarball/${MY_PV}/tdbc__mysql-${MY_PV}.tar.gz
	https://core.tcl.tk/tclconfig/tarball/${TEA_V}/TEA+%28tclconfig%29+Source+Code-${TEA_V}.tar.gz"

LICENSE="tcltk"
SLOT="0"
KEYWORDS="amd64 ~hppa ~ia64 ~mips ~ppc ~x86 ~amd64-linux ~x86-linux ~x86-macos"

RDEPEND="
	~dev-tcltk/tdbc-1.1.1
	>=dev-lang/tcl-8.6
	virtual/mysql
	"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_PN}"

src_unpack() {
	#this is ugly. tclconfig is packaged seperatly from tdbc
	unpack ${A}
	ln -s "${WORKDIR}/tdbc__mysql-${MY_PV}" ${MY_PN}
	ln -s "${WORKDIR}/TEA__tclconfig__Source_Code-${TEA_V}" ${MY_PN}/tclconfig
}

src_configure() {
	econf "--with-tdbc=/usr/lib64/tdbc1.1.1/"
}
