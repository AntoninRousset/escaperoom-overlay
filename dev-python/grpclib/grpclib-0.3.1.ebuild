# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Pure-Python gRPC implementation for asyncio"
HOMEPAGE="https://pypi.org/project/${PN}"

if [[ "${PV}" == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}.git"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
fi

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE="test"

RDEPEND="${PYTHON_DEPS}
	dev-python/h2[${PYTHON_USEDEP}]
	dev-python/multidict[${PYTHON_USEDEP}]
	$( python_gen_cond_dep 'dev-python/dataclasses[${PYTHON_USEDEP}]' python3_6 )
"

DEPEND="${RDEPEND}
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
	)

"



#>=dev-util/bumpversion-0.5.3
#>=dev-python/jinja-2.10
#>=dev-python/wheel-0.29.0
#>=dev-python/watchdog-0.8.0
#>=dev-python/flake8-2.6.0
#>=dev-python/tox-2.3.1
#>=dev-python/coverage-4.1
