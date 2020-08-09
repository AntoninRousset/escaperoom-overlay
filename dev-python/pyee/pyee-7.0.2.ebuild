# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="A port of node.js's EventEmitter to python."
HOMEPAGE="https://pypi.org/project/pyee/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE="+test"

RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}
	test? (
		dev-python/twisted[${PYTHON_USEDEP}]
		$( python_gen_cond_dep 'dev-python/trio[${PYTHON_USEDEP}]' python3_{7,8} )
	)
	dev-python/pytest-runner[${PYTHON_USEDEP}]
	dev-python/pytest-asyncio[${PYTHON_USEDEP}]
	$( python_gen_cond_dep 'dev-python/pytest_trio[${PYTHON_USEDEP}]' python3_{7,8} )
	dev-python/vcversioner[${PYTHON_USEDEP}]
"

