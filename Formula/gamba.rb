class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.0.0-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-aarch64-apple-darwin.zip"
      sha256 "REPLACE_ME" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-x86_64-apple-darwin.zip"
      sha256 "REPLACE_ME" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "REPLACE_ME" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.0.0-test/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "REPLACE_ME" # linux-x86
    end
  end

  def install
    bin.install "gamba_tool"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba_tool --help")
  end
end