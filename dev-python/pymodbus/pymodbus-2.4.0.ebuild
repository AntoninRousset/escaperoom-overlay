# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1

DESCRIPTION="A full Modbus protocol implementation using twisted/torndo/asyncio for its asynchronous communications core"
HOMEPAGE="https://github.com/riptideio/${PN}"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ̃~arm arm64 ~x86"
IUSE="test tornado asyncio"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/six-1.15.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.4[${PYTHON_USEDEP}]

	test? (
		>=dev-python/coverage-4.4[${PYTHON_USEDEP}]
		>=dev-python/mock-2.0.0[${PYTHON_USEDEP}]
		>=dev-python/nose-1.3.7[${PYTHON_USEDEP}]
		>=dev-python/pep8-1.7.0[${PYTHON_USEDEP}]
	)

	tornado? (
		>=www-servers/tornado-4.5.2[${PYTHON_USEDEP}]
	)

	asyncio? (
		dev-python/pyserial-asyncio[${PYTHON_USEDEP}]
	)
"

DEPEND="${RDEPEND}"
