class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.2/cloudcode-aarch64-apple-darwin"
      sha256 "e7b4e64192b8d282a9523db9b2598175e08e1f4c9374ef990226073cda5857a5"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.2/cloudcode-x86_64-apple-darwin"
      sha256 "d079b4e04525346fa087b4038f14457a89e738122fea664f1138c0e8dd3a97b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.2/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "6d4ae94e1fedac7839453de75276aa0154ccb266782475d631690988058906c0"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.2/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "bd3185cb5262179bbc6fd38b9232ff441b141602cecaeed5db549aad5dbbbfcb"
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
