# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2 multilib

DESCRIPTION="Skype icon wrapper for Linux."
HOMEPAGE="http://github.com/derlaft/skype1ico"
SRC_URI="https://github.com/derlaft/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

DEPEND="
    dev-qt/qtcore:4[abi_x86_32(-)]
	dev-qt/qtgui:4[abi_x86_32(-)]
"

RDEPEND="${DEPEND}
	|| ( >=net-im/skype-4.2 <net-im/skype-4.2[-qt-static] )
"

DOCS="LICENSE README.md"

pkg_setup() {
	use amd64 && multilib_toolchain_setup x86
}
