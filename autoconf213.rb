require 'formula'

class Autoconf213 < Formula
  homepage 'http://www.gnu.org/software/autoconf/'
  url 'http://ftpmirror.gnu.org/autoconf/autoconf-2.13.tar.gz'
  md5 '9de56d4a161a723228220b0f425dc711'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--program-suffix=213",
                          "--prefix=#{prefix}",
                          "--infodir=#{info}",
                          "--datadir=#{share}/autoconf213"
    system "make install"
  end
end
