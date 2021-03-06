require 'formula'

class Librets < Formula
  homepage 'http://code.crt.realtors.org/projects/librets'
  url 'http://www.crt.realtors.org/projects/rets/librets/files/librets-1.5.3.tar.gz'
  sha1 '2de4d9e9cb26533eb0a9a090b3354a70ed3c41ec'

  depends_on 'boost149'

  def install
    old_boost = Formula.factory("boost149")
    system "./configure", "--disable-debug",
                          "--enable-shared_dependencies",
                          "--prefix=#{prefix}",
                          "--with-boost-prefix=#{old_boost.prefix}",
                          "--disable-dotnet",
                          "--disable-java",
                          "--disable-perl",
                          "--disable-php",
                          "--disable-python",
                          "--disable-ruby"
    system "make install"
  end
end
