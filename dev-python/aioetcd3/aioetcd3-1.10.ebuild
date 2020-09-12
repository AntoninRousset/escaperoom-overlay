# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="etcd v3 api for asyncio"
HOMEPAGE="https://github.com/gaopeiliang/aioetcd3"
SRC_URI="https://github.com/gaopeiliang/aioetcd3/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE=""
KEYWORDS="amd64 ̃~arm ~arm64 ~x86"
IUSE="doc test"

RDEPEND="${PYTHON_DEPS}

	dev-python/protobuf-python
	dev-python/aiogrpc

    doc? (
        dev-python/sphinx
        dev-python/sphinxcontrib-asyncio
    )

"

DEPEND="${RDEPEND}"

BDEPEND="${DEPEND}

    test? (
        dev-python/pytest
        dev-python/pytest-cov
        dev-python/pytest-timeout
        dev-python/pytest-timeout
    )
"

python_prepare_all() {
	sed -i -e 's/find_packages()/find_packages(exclude=["test"])/' setup.py
	distutils-r1_python_prepare_all
}
