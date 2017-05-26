class Box < Formula
  @@boxVersion = "0.5.2"

  desc "A Next-Generation Builder for Docker Images"
  homepage "https://box-builder.github.io/box/"
  url "https://github.com/box-builder/box/releases/download/v#{@@boxVersion}/box-#{@@boxVersion}.portable.gz"
  sha256 "746565291ed18fe4dabd7d6d3dabc13c133d8d2b34f79a302aa61342c00a899f"

  def install
    mv "box-#{@@boxVersion}.portable", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
