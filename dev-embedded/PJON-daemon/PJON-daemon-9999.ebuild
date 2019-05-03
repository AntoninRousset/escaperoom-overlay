# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig git-r3

DESCRIPTION="Local socket connection to the PJON® network protocol"
HOMEPAGE="https://github.com/AntoninRousset/PJON-daemon"
EGIT_REPO_URI="https://github.com/AntoninRousset/PJON-daemon.git"

SLOT="0"
LICENSE="GPL-3"
KEYWORD=""
IUSE="savedconfig"

RDEPEND="virtual/udev" # Not really necessary?
DEPEND="${RDEPEND}"

src_prepare() {
	default

	restore_config config.h
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install

	newinitd "${FILESDIR}/${PN}.initd" ${PN}

	save_config config.h
}
