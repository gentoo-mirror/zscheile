# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="O'Caml Graph library"
HOMEPAGE="http://ocamlgraph.lri.fr/index.en.html"
SRC_URI="https://github.com/backtracking/${PN}/releases/download/${PV}/${P}.tbz"
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	dev-ml/stdlib-shims:=[ocamlopt?]"
DEPEND="${RDEPEND}"

src_compile() {
	dune build --only-packages ocamlgraph @install || die
}
