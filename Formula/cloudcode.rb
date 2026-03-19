class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-apple-darwin"
      sha256 "ab97a23231eea19df1e62c45c6545aa65a9bf83eea48be28e2880fae4f1af362"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-apple-darwin"
      sha256 "5aeaf1be244ada6146141a36024f394a9467066f3441af9711b422eeebfcd69f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "7a706f5877de1991384df1bfce928df64afdd1af680f9ee88fdde520ee935468"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.6/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "3b39e9317c42c89e0932ed3cd283a99130c918c0ee4611af7bdefe5104070d1b"
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
