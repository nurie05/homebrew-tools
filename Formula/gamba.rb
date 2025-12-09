class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.0.1-fix"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-fix/gamba-aarch64-apple-darwin.zip"
      sha256 "905d0e96b2d7bac206f939311be8498f94252282a30595817db05d9e6538c3ef" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-fix/gamba-x86_64-apple-darwin.zip"
      sha256 "896fbeb5c9d69f592f967a17434078a314937b580b1dec2ef16280331c89d0f9" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-fix/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-fix/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "6208d06cf36e0fd63dbd73a322f4a7d2623f2c64c508ce75db5b2b1fc5410396" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end