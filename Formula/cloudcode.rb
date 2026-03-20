class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.7/cloudcode-aarch64-apple-darwin"
      sha256 "3a5ec28dab578d767f2f1adc502ff01a364a2ec47bf42b8248534d68b188f002"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.7/cloudcode-x86_64-apple-darwin"
      sha256 "b00379d6bb4fe452ef35d1243e48370ba35f15effa9ee863acde97f4126ca6c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.7/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "61b53475ec3a21270706dfeb10af1d22edc9975b585c92f25cb654ec769dd646"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.7/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "9c6b931045052eb9997e1db7162d24bd60e4ad5d6ad9807956392e7a56013a15"
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
