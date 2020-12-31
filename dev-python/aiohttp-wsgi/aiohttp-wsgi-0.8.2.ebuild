# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1

DESCRIPTION="WSGI adapter for aiohttp"
HOMEPAGE="https://github.com/etianen/aiohttp-wsgi"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

DOCS=( README.rst )
