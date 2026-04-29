class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.0/gamba-aarch64-apple-darwin.zip"
      sha256 "4f0df4e4a663f19fb230610cf62807c2c3f282a5f6e748bacc3043935dd438bc" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.0/gamba-x86_64-apple-darwin.zip"
      sha256 "b4582926dcdf1c60e27416f5e75c88e00d8536c4600905b4d7d8cf54e7317539" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.0/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.0/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "dd162f289cf82bc8d73c5792882cb585bfeb0eedaf2583fe32f2c514d7ec39af" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end