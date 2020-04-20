# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Pure python client for etcd v3 (Using gRPC-JSON-Gateway)"
HOMEPAGE="https://pypi.org/project/${PN}"

if [[ "${PV}" == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}.git"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
fi

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE="+test"

RESTRICT="!test? ( test )"

RDEPEND="${PYTHON_DEPS}
	>=dev-db/etcd-3.2.2
	<dev-db/etcd-3.4.0
	>=dev-python/aiohttp-3.0.0
	>=dev-python/six-1.11.0
	>=dev-python/requests-2.10.0
	>=dev-python/semantic_version-2.6.0
	>=dev-python/pyopenssl-0.14
	>=dev-python/cryptography-1.3.4
	>=dev-python/idna-2.0.0
"

DEPEND="${RDEPEND}
	>=dev-python/pip-8.1.2
	test? (
		=dev-python/pytest-asyncio-0.10.0
	)
"



#>=dev-util/bumpversion-0.5.3
#>=dev-python/jinja-2.10
#>=dev-python/wheel-0.29.0
#>=dev-python/watchdog-0.8.0
#>=dev-python/flake8-2.6.0
#>=dev-python/tox-2.3.1
#>=dev-python/coverage-4.1
