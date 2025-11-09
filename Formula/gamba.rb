class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.0.1-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-test/gamba-aarch64-apple-darwin.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-test/gamba-x86_64-apple-darwin.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-test/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.1-test/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end