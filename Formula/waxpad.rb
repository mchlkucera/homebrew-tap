class Waxpad < Formula
  desc "Floating markdown notepad for macOS"
  homepage "https://github.com/mchlkucera/waxpad"
  url "https://github.com/mchlkucera/waxpad/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "ab08e8746cc20221f3a2306b8e41ec07dc6c5e36e989a0a982aa50a678fee97d"
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
