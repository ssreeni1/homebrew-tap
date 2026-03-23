class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-aarch64-apple-darwin"
      sha256 "37927271f215c27f89a5344bcdf52a8c708d70f309eec199307ebb42c3104b6b"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-x86_64-apple-darwin"
      sha256 "127cd9411f69ae58976ded38e8e4c151359ceeee983492df8a2dcb3b34a1967f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "a7bf781c4bf6e9dac0d9b685e6c175feb686ffd4c5fd7c8b563f69a4deb7cc05"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "885203a39a00c1e996e3b4ed01cbd663f3a38add3b9e16b83fa94e4a3f9a8956"
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
