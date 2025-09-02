class RuneVcs < Formula
  desc "Modern, intelligent version control system"
  homepage "https://github.com/Johan-Ott/rune-vcs"
  license "Apache-2.0"
  version "0.3.3-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Johan-Ott/rune-vcs/releases/download/v0.3.3-alpha.1/rune-0.3.3-alpha.1-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Johan-Ott/rune-vcs/releases/download/v0.3.3-alpha.1/rune-0.3.3-alpha.1-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  depends_on "git"

  def install
    bin.install "rune" => "rune-vcs"
  end

  test do
    system "#{bin}/rune-vcs", "--version"
    assert_match "rune #{version}", shell_output("#{bin}/rune-vcs --version")
  end
end
