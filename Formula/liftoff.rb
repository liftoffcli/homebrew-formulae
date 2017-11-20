require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/liftoffcli/liftoff'
  url 'http://liftoffcli.github.io/liftoff/Liftoff-1.8.2.tar.gz'
  sha256 'edc9b7e0003b5b96a9713bbd18941fd8438b47af9af2046b9787441fc6c7f262'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'defaults', 'templates', 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/liftoff.1']
    man5.install ['man/liftoffrc.5']

    bin.install 'src/liftoff'
  end

  test do
    system "#{bin}/liftoff", '--version'
  end
end
