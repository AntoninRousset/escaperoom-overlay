# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
PYTHON_REQ_USE="threads(+)"

inherit git-r3 distutils-r1 flag-o-matic virtualx toolchain-funcs prefix

DESCRIPTION="Process video to detect color"
HOMEPAGE="https://github.com/AntoninRousset/${PN}"
#SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="${HOMEPAGE}.git"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS=""
IUSE="array+"

RDEPEND="
	${PYTHON_DEPS}
	>=media-libs/opencv-3.4.1-r7[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.14.5[${PYTHON_USEDEP}]
	>=dev-python/matplotlib-2.2.2-r1[${PYTHON_USEDEP}]
	>=dev-python/picamera-1.13[${PYTHON_USEDEP},array]
"

DEPEND="${RDEPEND}"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
"

python_prepare_all() {
	distutils-r1_python_prepare_all
}

