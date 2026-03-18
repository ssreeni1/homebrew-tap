class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-aarch64-apple-darwin"
      sha256 "2078af685be32d91a2a5fe7014eb3aa8629c10e98471fe9d218292435733adee"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-x86_64-apple-darwin"
      sha256 "1041229ea5eaf170ac770cb1a9143d98d89e821cd4f0d67aca026a508a6d5650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "79c85bead7b07cc8a6a982e07e6ab888bafc87e69b78567a1cebfd01268dbca5"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.3/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "456f15a37abf32193d08a7ec7a75c250e9bbfc0dccaea5909642fd30071307e2"
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
