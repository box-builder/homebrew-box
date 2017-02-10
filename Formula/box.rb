class Box < Formula
  desc "A Next-Generation Builder for Docker Images"
  homepage "https://erikh.github.io/box/"
  url "https://github.com/erikh/box/releases/download/v0.4.2/box-0.4.2.darwin.gz"
  sha256 "40d2561b197a9e4460ba02f7499ee2c52a19a2bfe38d9baa3aafc4d4e883f5bc"

  def install
    mv "box-0.4.2.darwin", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
