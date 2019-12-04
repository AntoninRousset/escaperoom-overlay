EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="WebRTC and ORTC implementation for Python using asyncio"
HOMEPAGE="https://aiortc.readthedocs.io/en/latest/#"
SRC_URI="https://github.com/aiortc/aiortc/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-video/ffmpeg[opus,vpx]"
RDEPEND="${DEPEND}"

