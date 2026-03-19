class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-apple-darwin"
      sha256 "a851e2c1cdbb337a818d0cb155d200d189bbbbf6cb70a4ee19b92ad56fdc8494"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-apple-darwin"
      sha256 "ec300419f3acc4c709495f0e4cf8ed2dcbc1b06ad76a55d9847ef5353c71aa49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "d55e9d34a018f625efbddf54d2af6b921286a3af5e2df71cbe10572ab3210c1e"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "13b08af68e5347021f1df05b0627e8cd54f0d7a83d37307518db698b4d2b0f8a"
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
