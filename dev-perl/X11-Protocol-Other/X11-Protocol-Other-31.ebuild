# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=KRYDE
inherit perl-module

DESCRIPTION="Miscellaneous helpers for X11::Protocol connections"

LICENSE="${LICENSE} GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-perl/X11-Protocol"
DEPEND="${RDEPEND}"
