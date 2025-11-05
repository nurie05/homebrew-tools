class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.0.0-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-aarch64-apple-darwin.zip"
      sha256 "cd0eff98a416dac91e65fd23dbc8a1c2a755aa441b1fab07b695fc93e18e94cf" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-x86_64-apple-darwin.zip"
      sha256 "1e1b660f2693caa13f53736288b9636e2dc5a349590d011c26c783ab5d2f04b2" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "5f0d52a03bd9caea4f738f7494b9837d1bb17d111b604f8e4368d0973591bc78" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end