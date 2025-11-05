class Gamba < Formula
  desc "Operon finder and GTF analysis tool"
  homepage "https://github.com/nurie05/gamba_tool"
  url "https://github.com/nurie05/gamba_tool/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "b66645725dc72db590b1d64dc792badae38586d2811ee07bc4e00cb8db7a7f71"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # minimal smoke test
    assert_match "Usage", shell_output("#{bin}/gamba --help")
  end
end