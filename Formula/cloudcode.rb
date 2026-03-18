class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-aarch64-apple-darwin"
      sha256 "aaadfaea0cf23ddeac6b267150c0c9662ee6a6f9e61929cfb69487675eac5372"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-x86_64-apple-darwin"
      sha256 "093e52ee452ca669ee5526baf98d44549e26ed89046e5aee7d84daa36049eb6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "7ed3c6f7f78c97bb5987dabb1730df489e865decac307b173f9dac55b0b7beb2"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "c5f4d2efa65d60752718ba7b9391bd5523e70f20b30d22355cedb53940272360"
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
