class Box < Formula
  @@boxVersion = "0.5.5"

  desc "A Next-Generation Builder for Docker Images"
  homepage "https://box-builder.github.io/box/"
  url "https://github.com/box-builder/box/releases/download/v#{@@boxVersion}/box-#{@@boxVersion}.portable.gz"
  sha256 "a72152eb9f6a2aa289b08198be22c2403b690d6c7221c880a1cb5ae05a33bb77"

  def install
    mv "box-#{@@boxVersion}.portable", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
