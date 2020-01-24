# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
PYTHON_REQ_USE="threads(+)"

inherit git-r3 distutils-r1 flag-o-matic virtualx toolchain-funcs prefix

DESCRIPTION="Display informations in an escaperoom"
HOMEPAGE="https://github.com/AntoninRousset/${PN}"
#SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="${HOMEPAGE}.git"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS=""
IUSE=""

RDEPEND="
	${PYTHON_DEPS}
	>=dev-python/PyQt5-5.12.2[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"

