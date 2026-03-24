class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.1/cloudcode-aarch64-apple-darwin"
      sha256 "d88b811ccf73d44307ae0f2549d7f585e3099deea5c1d925e6d038ffa072c25e"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.1/cloudcode-x86_64-apple-darwin"
      sha256 "48d0651ebccfbda01fc12e658dc4e8e2a56e55e34f6d7b7492e0d55e8eb0da5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.1/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "dd1f704f2f7f6f07f7895cf4d1ff13b24cdb2534d8c4199a22a794145ed8ae80"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.2.1/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "ef2648d31e499a47e1c41776649aacac655140a9fc2dac9616860338314b7fd7"
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
