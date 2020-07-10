# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="asyncio wrapper for grpc.io"
HOMEPAGE="https://github.com/hubo1016/aiogrpc"
SRC_URI="https://github.com/hubo1016/aiogrpc/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64 ̃~arm ~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}

	dev-python/grpcio

"

DEPEND="${RDEPEND}"

BDEPEND="${DEPEND}"
