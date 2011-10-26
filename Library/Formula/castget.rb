require 'formula'

class Castget < Formula
  url 'http://savannah.nongnu.org/download/castget/castget-1.0.1.tar.gz'
  homepage 'http://www.nongnu.org/castget/'
  md5 'b852dee0d98c005d20a2e6b4839939ad'

  depends_on 'glib'
  depends_on 'id3lib'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "castget -v"
  end
end