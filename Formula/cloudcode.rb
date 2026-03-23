class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.10/cloudcode-aarch64-apple-darwin"
      sha256 "9c3f0ffd3718ba649295abd334b31288e142d305de19d7d883bf8f0531b87d1c"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.10/cloudcode-x86_64-apple-darwin"
      sha256 "d980635784064d9e9f143dd1cc2bcb0e5afd0a96f6ac60ac16b1e053c9be6dab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.10/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "f2be35bef13cd040e2095cc3b6939e90b4dd442832ef1cc46dcd155bdb1dca2b"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.10/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "ee8e188cfec1bef9c1cf2bf8ddabb7e358865278f3b5a95942d2387c7989e6ab"
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
