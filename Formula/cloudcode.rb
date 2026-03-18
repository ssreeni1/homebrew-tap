class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.0/cloudcode-aarch64-apple-darwin"
      sha256 "2f69d09b542423c0a770bba21cb5671b4d94b194320afc9a6d2eaa2094d91bbc"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.0/cloudcode-x86_64-apple-darwin"
      sha256 "b9f330da79f38c1a2de64321080833bf452f5e55e352e16c58f7c150c6c74f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.0/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "74d2d4cd9017bedbedea9d73eb65123ce09fcf409f63f998462ab8f8c5a6f9e1"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.0/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "3bf70fe0077fd252d367c796980226e98b62fe599a875a20bceb6957ac443883"
    end
  end

  def install
    binary = Dir.glob("cloudcode*").first
    bin.install binary => "cloudcode"
  end

  test do
    assert_match "cloudcode", shell_output("#{bin}/cloudcode --version")
  end
end
