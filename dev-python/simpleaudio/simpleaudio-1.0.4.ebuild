EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="A simple audio playback Python extension - cross-platform, asynchronous, dependency-free"
HOMEPAGE="https://simpleaudio.readthedocs.io/en/latest/"
SRC_URI="https://github.com/hamiltron/py-simple-audio/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	default
	mv "py-simple-audio-${PV}" "${P}"
}
