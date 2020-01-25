EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1 git-r3

DESCRIPTION="A simple audio playback Python extension - cross-platform, asynchronous, dependency-free"
HOMEPAGE="https://simpleaudio.readthedocs.io/en/latest/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/hamiltron/py-simple-audio.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"
