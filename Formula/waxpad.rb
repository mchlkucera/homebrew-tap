class Waxpad < Formula
  desc "Floating markdown notepad for macOS"
  homepage "https://github.com/mchlkucera/waxpad"
  url "https://github.com/mchlkucera/waxpad/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fda973139bf8ada62200a97eeb3826b3889f300a14e3b8c0449c61639d56dc10"
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
