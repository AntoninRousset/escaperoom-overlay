EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="A pure Python interface to the Raspberry Pi camera module"
HOMEPAGE="https://picamera.readthedocs.io/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~arm ~arm64"
IUSE=""

DEPEND="dev-python/numpy"
RDEPEND="${DEPEND}"

