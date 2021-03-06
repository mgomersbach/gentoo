# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Python function signatures from PEP362 for Python 2.7"
HOMEPAGE="https://pypi.org/project/funcsigs/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="alpha amd64 arm ~arm64 hppa ia64 ~m68k ~mips ppc ppc64 ~s390 ~sh sparc x86 ~amd64-linux ~x86-linux"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/unittest2[${PYTHON_USEDEP}] )"
RDEPEND=""

python_test() {
	esetup.py test
}
