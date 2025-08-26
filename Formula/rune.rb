class Rune < Formula
  desc "Rune VCS - Modern, scalable version control system"
  homepage "https://github.com/captainotto/rune-vcs"
  url "https://github.com/captainotto/rune-vcs/releases/download/v0.2.0/rune-0.2.0-macos.tar.gz"
  sha256 "<SHA256-FÖR-ARKIVET>"
  license "MIT"

  def install
    bin.install "rune"
  end

  test do
    system "#{bin}/rune", "version"
  end
end