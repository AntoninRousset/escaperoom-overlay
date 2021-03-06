# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
PYTHON_REQ_USE="threads(+),sqlite(+)"

inherit git-r3 distutils-r1 desktop

DESCRIPTION="Run and monitor an escape room"
HOMEPAGE="https://github.com/AntoninRousset/${PN}"

if [[ "${PV}" == 9999 ]] ; then
    inherit git-r3
    EGIT_REPO_URI="${HOMEPAGE}.git"
else
    SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE="+cluesdisplay +database +sqlite"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	=dev-db/etcd-3.3.17[server]
	dev-python/etcd3-asyncio[${PYTHON_USEDEP}]

	>=dev-python/aiortc-0.9.22[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-sse-2.0.0[${PYTHON_USEDEP}]

	dev-python/PJON-daemon-client[${PYTHON_USEDEP}]

	>=dev-python/PySDL2-0.9.6[${PYTHON_USEDEP}]
	>=media-libs/sdl2-mixer-2.0.4

	dev-python/pyxdg[${PYTHON_USEDEP}]

	cluesdisplay? ( games-puzzle/escaperoom-cluesdisplay )

	dev-python/databases[${PYTHON_USEDEP}]
	sqlite? ( dev-python/aiosqlite[${PYTHON_USEDEP}] )
"

DEPEND="${RDEPEND}"

python_install_all() {
	distutils-r1_python_install_all

	doicon logo/logo.svg || die
	domenu escaperoom.desktop || die
}
