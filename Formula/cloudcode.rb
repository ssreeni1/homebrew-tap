class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-aarch64-apple-darwin"
      sha256 "4dd6301eb13872c6b70e1df239004d251924f718f00f9fe1e5ffa70139e92b48"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-x86_64-apple-darwin"
      sha256 "19cceb37222133929a87dd4ed5e636c6299fa938aedf68a95bce5ebb65834cbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "0dd1ca6d35a374ea87762680e31f17b454416fef47610e0e77a35e34a9fab537"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.11/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "598e6923abf00d96b083ad7dba597fb18e795234db2412c2efba607f0c33c221"
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
