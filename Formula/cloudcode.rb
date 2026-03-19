class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-apple-darwin"
      sha256 "d65e3b2119d0a1afc32d4d42b2ec232363ca6129da938340d64457511da35cc1"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-apple-darwin"
      sha256 "b73041fae732523bcd9834e1574ea8ed65e7f822b2ab9ab2f4c682ab7621d82b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "22b738b5594e8918e3ff768a034d3d164071bf5568ff6d0b3b8f991cac995f9f"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "660fd723d45949110ab59f19b2d814ccd9d5dad028f7e83c5a41bfecf49cb22c"
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
