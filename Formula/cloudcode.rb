class Cloudcode < Formula
  desc "Persistent cloud Claude Code sessions on Hetzner VPS"
  homepage "https://github.com/ssreeni1/cloudcode"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.5/cloudcode-aarch64-apple-darwin"
      sha256 "948196f2046bf02a6ccefe2876b49c2964393cf74dd59c792e98c1b7fc02eb7e"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.5/cloudcode-x86_64-apple-darwin"
      sha256 "17103bf01c7fa4988758ddf35f0a8acd7f0b62d3f8381d2b6091790e5ac5ae87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.5/cloudcode-aarch64-unknown-linux-gnu"
      sha256 "26314c7fe1015549a9129022f9bc84ac873785c999ca12c4c9a63095597d6d43"
    end
    on_intel do
      url "https://github.com/ssreeni1/cloudcode/releases/download/v0.1.5/cloudcode-x86_64-unknown-linux-gnu"
      sha256 "ff1d138724b8e31bed9dbba54e86b6343ab21dfa8a7acb54818a44ac3b12e6ab"
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
