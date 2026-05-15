class Waxpad < Formula
  desc "Floating markdown notepad for macOS"
  homepage "https://github.com/mchlkucera/waxpad"
  url "https://github.com/mchlkucera/waxpad/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "19835381a449d26bccae3366b516b873eb02ac9fda7a2bb98f5c30d54d37dcc3"
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
