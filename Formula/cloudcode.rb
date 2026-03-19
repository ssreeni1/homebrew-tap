class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-apple-darwin"
      sha256 "f87cc05796a8e367ca131016fa8e73935ee2c98a43ab6f5ee275f9663b303d04"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-apple-darwin"
      sha256 "fb58688a2b79cb08432ed0ff6cae8fca11eced86236f6e551bcbcbc1ae2c61f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "5edc718138276c28ee7a94288d452b2952584950c590ee15fec5305f45c95964"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "4c239cc283f49a01a280750c8ff0dd223cd830fe41d9649f94e6b5f9bfbc05f8"
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
