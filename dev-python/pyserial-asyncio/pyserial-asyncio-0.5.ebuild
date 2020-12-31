# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1

DESCRIPTION="Async I/O extension package for the Python Serial Port Extension for OSX, Linux, BSD"
HOMEPAGE="https://github.com/pyserial/pyserial-asyncio"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE=""

DEPEND="dev-python/pyserial"
RDEPEND="${DEPEND}"
