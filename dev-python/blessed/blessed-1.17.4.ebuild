EAPI=6

PYTHON_COMPAT=( python2_7 python3_{2,3,4,5,6,7,8} )
inherit distutils-r1

DESCRIPTION="A thin, practical wrapper around terminal styling, screen positioning, and keyboard input"
HOMEPAGE="https://pypi.org/project/blessed/"
SRC_URI="https://github.com/jquast/blessed/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

