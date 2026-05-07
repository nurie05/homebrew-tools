class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba-tool"
  version "2.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.1/gamba-aarch64-apple-darwin.zip"
      sha256 "4d900936f87257f5f2b26f2f90624c4af2eb5efc6587e335654f043336cca75c" # arm64
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.1/gamba-x86_64-apple-darwin.zip"
      sha256 "09808dffd0e4da492f329f8ea7f80e52e38cfc56fb9d4523da53f49d237a1876" # intel
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.1/gamba-aarch64-unknown-linux-gnu.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # linux-arm
    else
      url "https://github.com/nurie05/gamba-tool/releases/download/v2.1.1/gamba-x86_64-unknown-linux-gnu.zip"
      sha256 "5665d25bf40e0567042d6b6330a38dbfbf96060d6d462c795d18d5a24bde116d" # linux-x86
    end
  end

  def install
    bin.install "gamba"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end