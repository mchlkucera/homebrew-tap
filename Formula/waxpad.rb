class Waxpad < Formula
  desc "Floating markdown notepad for macOS"
  homepage "https://github.com/mchlkucera/waxpad"
  url "https://github.com/mchlkucera/waxpad/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "065c5c77df2811dbbed8bee6dcc53188ac9565457e7d085863b57dd908d145f7"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/Waxpad" => "waxpad"
  end

  test do
    assert_predicate bin/"waxpad", :executable?
  end
end
