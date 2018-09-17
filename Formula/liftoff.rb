require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/liftoffcli/liftoff'
  url 'http://liftoffcli.github.io/liftoff/Liftoff-1.8.3.tar.gz'
  sha256 'd21a1c73f07db25f6911407f845f702c340828ed2e712175044c2e91871c4d8f'

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
