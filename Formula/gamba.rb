class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.2/gamba-aarch64-apple-darwin.zip"
      sha256 "3e10a91926db83540a9ef1167992955af54a0031986877701846141cc0ad7128" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.2/gamba-x86_64-apple-darwin.zip"
      sha256 "14f93f43ea1b8a1f5ce9b3e5467581b04846951040234dd5c3deb52820fbbe65" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.2/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.2/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "9a6f3494291ebd6020ec895c1e9d350d875337e903b325e282fa1263080fab52" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end