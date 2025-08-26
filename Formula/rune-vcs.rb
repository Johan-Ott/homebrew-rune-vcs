class RuneVcs < Formula
  desc "Rune VCS - Modern, scalable version control system"
  homepage "https://github.com/Johan-Ott/rune-vcs"
  url "https://github.com/Johan-Ott/rune-vcs/releases/download/v0.2.5/rune-v0.2.5-aarch64-apple-darwin.tar.gz"
  sha256 "d6e8d3fabb4e926507ba08db4f147645527afcc77e2edbda9d6f28e220433253" 
  license "MIT"
  version "0.2.5"

  def install
    bin.install "rune" => "rune-vcs"
  end

  test do
    system "#{bin}/rune-vcs", "--version"
  end
end