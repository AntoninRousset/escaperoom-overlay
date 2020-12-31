# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="asyncio extension package for pyserial"
HOMEPAGE="https://github.com/pyserial/pyserial-asyncio"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ̃~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial
"

DEPEND="${RDEPEND}"

BDEPEND="${DEPEND}"
