class Box < Formula
  @@boxVersion = "0.5.6"

  desc "A Next-Generation Builder for Docker Images"
  homepage "https://box-builder.github.io/box/"
  url "https://github.com/box-builder/box/releases/download/v#{@@boxVersion}/box-#{@@boxVersion}.portable.gz"
  sha256 "ef8d73b3cfff2defc38bad2c6463d05bcfb92d153c02f653bcf1b91ed454f2e6"

  def install
    mv "box-#{@@boxVersion}.portable", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
