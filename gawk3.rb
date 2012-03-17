require 'formula'

class Gawk3 < Formula
  homepage 'http://www.gnu.org/software/gawk/'
  url 'http://ftpmirror.gnu.org/gawk/gawk-3.1.8.tar.bz2'
  mirror 'http://ftp.gnu.org/gnu/gawk/gawk-3.1.8.tar.bz2'
  md5 '52b41c6c4418b3226dfb8f82076193bb'

  fails_with_llvm "Undefined symbols when linking", :build => "2326"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
