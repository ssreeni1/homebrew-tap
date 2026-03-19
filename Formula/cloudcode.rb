class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-apple-darwin"
      sha256 "791ad43eda4efa713befeee193883fbcf2a77280a3b89df73c49c3916f5523fd"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-apple-darwin"
      sha256 "7244a18726326df7e05d87e1633231958493a26c1fa81048e786d245a25ea009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "db0543e9e96b709d3681e00b1daf9c1a2647d14f413e5ca6452be26295556a7f"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "913ed0e18b0e20a01872c445a3ab5f45703882626e7cbb4a538cd36e7a98d144"
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
