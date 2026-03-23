class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.9/cloudcode-aarch64-apple-darwin"
      sha256 "6de46db75a76e4209f62d2f9ad092fcdda5a4eb29b1fa714a6e867c4dd761dd7"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.9/cloudcode-x86_64-apple-darwin"
      sha256 "26d04f5956da056f8bfa7e752c6841f5bcb32e0c5fdc373588052ba881b30aa9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.9/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "07f8251bdead267de60e90d963eb9f45696fba763d46732b255a0b30ae2d6444"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.9/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "aa7428fd479b0bc78ac977aa4a7aa9420cad09ddfe540891e6d96bdc40fd7ae4"
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
