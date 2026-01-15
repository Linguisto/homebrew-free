class Free < Formula
  desc "Linux-like free(1) memory summary for macOS"
  homepage "https://github.com/Linguisto/free-macos"
  url "https://github.com/Linguisto/free-macos/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bbfc1b3468ee2094d54ae86994c513038e502a042f7bcc4c2b9bcbb54a07fc8d"
  license "MIT"

  depends_on "python"

  def install
    bin.install "free"
    man1.install "free.1"
  end

  test do
    output = shell_output((bin/"free").to_s)
    assert_match "Mem:", output
    assert_match "Swap:", output
  end
end
