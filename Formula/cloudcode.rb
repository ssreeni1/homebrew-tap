class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.0/cloudcode-aarch64-apple-darwin"
      sha256 "0b6b82f341111c6454561c35e9b528e59a842edb94efe814c29aa5865ca255cb"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.0/cloudcode-x86_64-apple-darwin"
      sha256 "9a43c102f7b13e3a78c95c7420f4138400f4671912e1f67d7e7a27c3375c13ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.0/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "fd8890070de4f87c641b1cd2ad54d2f5a5767898a0cb5b8502bc28b6f00ff1fa"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.0/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "ae4e59f435bc9a80d648157d4c90e134ad77f2819769ca1bed2d5b1e77ef5018"
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
