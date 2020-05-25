# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Yet another etcd v3 client using grpclib"
HOMEPAGE="https://github.com/AntoninRousset/etcd3-asyncio"

if [[ "${PV}" == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}.git"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
fi

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	dev-python/protobuf-python[${PYTHON_USEDEP}]
	dev-python/googleapis-common-protos[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
