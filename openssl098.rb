require 'formula'

class Openssl098 < Formula
  homepage 'http://www.openssl.org'
  url 'http://www.openssl.org/source/openssl-0.9.8u.tar.gz'
  sha1 '09b4f2d9c4588d8010eac6f4ab0c96ad0e9d66ac'

  keg_only :provided_by_osx,
    "The OpenSSL provided by Leopard (0.9.7) is too old for some software."

  def install
    system "./config", "--prefix=#{prefix}",
                       "--openssldir=#{etc}/openssl",
                       "zlib-dynamic", "shared"

    ENV.deparallelize # Parallel compilation fails
    system "make"
    system "make test"
    system "make install MANDIR=#{man} MANSUFFIX=ssl"
  end

  def caveats; <<-EOS.undent
    Note that the libraries built tend to be 32-bit only, even on Snow Leopard.
    EOS
  end
end
