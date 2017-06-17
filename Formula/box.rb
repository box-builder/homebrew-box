class Box < Formula
  @@boxVersion = "0.5.3"

  desc "A Next-Generation Builder for Docker Images"
  homepage "https://box-builder.github.io/box/"
  url "https://github.com/box-builder/box/releases/download/v#{@@boxVersion}/box-#{@@boxVersion}.portable.gz"
  sha256 "d94b4bf8d2309e854365f76b2254ddbd2ef4b087562955d5f2df1d1f89fb89ce"

  def install
    mv "box-#{@@boxVersion}.portable", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
