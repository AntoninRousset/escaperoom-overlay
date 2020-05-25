# Distributed under the terms of the GNU General Public License v3

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Public interface definitions of Google APIs"
HOMEPAGE="https://pypi.org/project/${PN}"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	dev-python/protobuf-python[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
