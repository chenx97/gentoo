# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Bash script that uses udisks to mount removable devices without GUI"
HOMEPAGE="https://github.com/jamielinux/bashmount"
SRC_URI="https://github.com/jamielinux/bashmount/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

# sys-apps/util-linux -> lsblk
RDEPEND="
	app-shells/bash:*
	sys-apps/dbus
	sys-apps/util-linux
	sys-fs/udisks:2
"
DEPEND="${RDEPEND}"

src_install() {
	dobin ${PN}
	insinto /etc
	doins ${PN}.conf
	doman ${PN}.1
	dodoc NEWS
}
