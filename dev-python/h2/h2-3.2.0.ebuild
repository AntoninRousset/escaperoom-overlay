# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="HTTP/2 State-Machine based protocol implementation"
HOMEPAGE="https://pypi.org/project/${PN}"

if [[ "${PV}" == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}.git"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
fi

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE="test"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/hyperframe-5.2.0[${PYTHON_USEDEP}]
	<dev-python/hyperframe-6.0.0
	>=dev-python/hpack-3.0.0[${PYTHON_USEDEP}]
	<dev-python/hpack-4.0.0
"

DEPEND="${RDEPEND}
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-cov[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-python/pytest-xdist[${PYTHON_USEDEP}]
		dev-python/hypothesis[${PYTHON_USEDEP}]
	)

"



#>=dev-util/bumpversion-0.5.3
#>=dev-python/jinja-2.10
#>=dev-python/wheel-0.29.0
#>=dev-python/watchdog-0.8.0
#>=dev-python/flake8-2.6.0
#>=dev-python/tox-2.3.1
#>=dev-python/coverage-4.1
