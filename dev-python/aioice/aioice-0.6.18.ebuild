# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="asyncio-based Interactive Connectivity Establishment (RFC 5245)"
HOMEPAGE="https://github.com/aiortc/${PN}"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"


SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	dev-python/netifaces[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	virtual/pkgconfig
"

