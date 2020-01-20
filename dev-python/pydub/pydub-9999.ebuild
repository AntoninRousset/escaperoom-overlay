EAPI=6

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1 git-r3

DESCRIPTION="Manipulate audio with a simple and easy high level interface"
HOMEPAGE="http://pydub.com/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/jiaaro/pydub.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="ffmpeg"

DEPEND=""
RDEPEND="
	${DEPEND}
	ffmpeg? (
		virtual/ffmpeg
	)
"