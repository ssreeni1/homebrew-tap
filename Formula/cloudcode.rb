class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.4/cloudcode-aarch64-apple-darwin"
      sha256 "d5452c0f09c58b55dcfc91d30ae015486e820bccc114a3b420919515b065a4be"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.4/cloudcode-x86_64-apple-darwin"
      sha256 "01357fdc9b0e9676fc912aefa652fdc29381625dc82f4fd8ae22a10f2e6e0534"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.4/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "ae6dcaaa4fdf7a0dc55397c74a67c760135be0626916d35124665a08ff9dfdef"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.4/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "b55eb1fec45320bf6716eecd27f6b25d91937e763daa3bf9aa5a7a1ae5da3478"
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
