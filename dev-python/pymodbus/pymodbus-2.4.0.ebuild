# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6,7,8} )

inherit distutils-r1

DESCRIPTION="A full modbus protocol written in python"
HOMEPAGE="https://github.com/riptideio/pymodbus"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ̃~arm ~arm64 ~x86"
IUSE="+asyncio"

RDEPEND="${PYTHON_DEPS}
	dev-python/grpcio
	asyncio? (
		=dev-python/pyserial-asyncio-0.4
	)
"

DEPEND="${RDEPEND}"

BDEPEND="${DEPEND}"
