require 'formula'

class Autoconf264 < Formula
  homepage 'http://www.gnu.org/software/autoconf/'
  url 'http://ftpmirror.gnu.org/autoconf/autoconf-2.64.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/autoconf/autoconf-2.64.tar.gz'
  md5 '30a198cef839471dd4926e92ab485361'

  def install
    system "./configure", "--program-suffix=264",
                          "--prefix=#{prefix}",
                          "--datadir=#{share}/autoconf264"
    system "make install"
  end
end
