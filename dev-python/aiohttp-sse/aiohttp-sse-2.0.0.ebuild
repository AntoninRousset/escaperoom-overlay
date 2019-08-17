EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="Server-sent events support for aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiohttp-sse"
SRC_URI="https://github.com/aio-libs/aiohttp-sse/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-python/aiohttp-3.0.6"
RDEPEND="${DEPEND}"

