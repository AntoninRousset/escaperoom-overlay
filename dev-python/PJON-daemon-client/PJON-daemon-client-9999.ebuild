EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1 git-r3

DESCRIPTION="Python module to connect to a PJON-daemon, listen and send messages"
HOMEPAGE="https://github.com/VianneyRousset/PJON-daemon-client"
SRC_URI=""
EGIT_REPO_URI="https://github.com/VianneyRousset/PJON-daemon-client"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ̃~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
    dev-embedded/PJON-daemon
"

DEPEND="${RDEPEND}"

