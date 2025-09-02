class RuneVcs < Formula
  desc "Modern, intelligent version control system"
  homepage "https://github.com/Johan-Ott/rune-vcs"
  license "Apache-2.0"
  version "0.3.3-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Johan-Ott/rune-vcs/releases/download/v0.3.3-alpha.1/rune-main-aarch64-apple-darwin.tar.gz"
      sha256 "a13bdf49858e94ade39c3069dc06897d699f015c98b8ca1902ba6c7a5ecc9097"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Johan-Ott/rune-vcs/releases/download/v0.3.3-alpha.1/rune-main-x86_64-apple-darwin.tar.gz"
      sha256 "754cbe208e57ef46e62be5cd5e7b92ded386a0ee06608d89fa78f54de51e4dc0"
    end
  end

  depends_on "git"

  def install
    bin.install "rune" => "rune-vcs"
  end

  test do
    system "#{bin}/rune-vcs", "--version"
    assert_match "rune 0.3.3-alpha.1", shell_output("#{bin}/rune-vcs --version")
  end
end
