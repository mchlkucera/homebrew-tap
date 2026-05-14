class Waxpad < Formula
  desc "Floating markdown notepad for macOS"
  homepage "https://github.com/mchlkucera/waxpad"
  url "https://github.com/mchlkucera/waxpad/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "45d810fe679aedb6e36c6d0581bdc7cfd2f2316e06fb1668e3ccc6fa5f3f4866"
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
