EAPI=8

DESCRIPTION="Free, open-source 2D vector animation & game editor"
HOMEPAGE="https://github.com/atlis-svg/flint"
SRC_URI="https://github.com/atlis-svg/flint/releases/download/v${PV}/flint-v${PV}-linux-x86_64.tar.gz"
S="${WORKDIR}"

LICENSE="|| ( Apache-2.0 MIT )"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="strip"
QA_PREBUILT="usr/bin/*"

RDEPEND="x11-libs/libxkbcommon"

src_install() {
	local f p
	for f in flint flint-player; do
		p=$(find . -type f -name "${f}" | head -n1)
		[[ -n ${p} ]] || die "${f} not found in tarball"
		dobin "${p}"
	done
}
