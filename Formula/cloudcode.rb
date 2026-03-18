class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.1/cloudcode-aarch64-apple-darwin"
      sha256 "d81ce8dd74841cf0581d5341d8008c764b5a9f8dcdc0ad3bf56d3d29cada6b4a"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.1/cloudcode-x86_64-apple-darwin"
      sha256 "506d796d74d41b0e5cd22f6e1132981a6c99d6ba7ca1ff1ff4146f96d4398901"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.1/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "58a32ef36c476dd848534239f0c38f53ecfaea71a7fbd202768917cbfccf0a59"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.1/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "bca7cb379989a93446c01f0d7cf11416d76de4db9ea9583c4c507ff4688eaa52"
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
