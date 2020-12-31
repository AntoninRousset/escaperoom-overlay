# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="Library for accessing a PostgreSQL database from the asyncio"
HOMEPAGE="https://aiopg.readthedocs.io"
SRC_URI="https://github.com/aio-libs/aiopg/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD-2"
KEYWORDS="amd64 ̃~arm ~arm64 ~x86"
IUSE="doc test sa"

RDEPEND="${PYTHON_DEPS}

	virtual/pkgconfig
	>=dev-python/coverage-5.0.3
	>=dev-python/flake8-3.7.9
	dev-python/isort
	dev-python/psycopg

	sa? ( dev-python/sqlalchemy )

	doc? (
		dev-python/sphinx
		dev-python/sphinxcontrib-asyncio
	)
"

DEPEND="${RDEPEND}
"

BDEPEND="${DEPEND}
	test? (
		dev-python/pytest
		dev-python/pytest-cov
		dev-python/pytest-timeout
	)
"
