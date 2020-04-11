# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1

DESCRIPTION="Event-driven networking engine written in Python"
HOMEPAGE="https://github.com/twisted/twisted"
SRC_URI="${HOMEPAGE}/archive/${P}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	>=dev-python/zope-interface-4.4.2[${PYTHON_USEDEP}]
"


DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

