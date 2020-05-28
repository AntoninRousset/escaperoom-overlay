# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Sniff out which async library your code is running under"
HOMEPAGE="https://pypi.org/project/sniffio/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
$( python_gen_cond_dep 'dev-python/attrs[${PYTHON_USEDEP}]' python3_{5,6} )
"

DEPEND="${RDEPEND}"

