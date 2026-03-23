class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.8/cloudcode-aarch64-apple-darwin"
      sha256 "58406372e7078645b35e9cdf4d979a8b97554d3c417fdfb9f50b1585013fcdc5"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.8/cloudcode-x86_64-apple-darwin"
      sha256 "9fb0539779b092448e793d8d95a0ee8e6802c6104319be7f27ee25a07867f59c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.8/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "2e64857944b10362702e5cfa2a51574f05096a4d8788e3d568d94bf38db2d0a5"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.8/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "d56a86d7d729c875d85a03ed11b780088d43dd6666441a14433e59772226c1ec"
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
