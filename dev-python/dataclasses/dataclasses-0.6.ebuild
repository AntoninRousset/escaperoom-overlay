# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Backport implementation of PEP 557"
HOMEPAGE="https://github.com/ericvsmith/${PN}"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}"
