class Box < Formula
  version = "0.5.0"

  desc "A Next-Generation Builder for Docker Images"
  homepage "https://erikh.github.io/box/"
  url "https://github.com/erikh/box/releases/download/v#{version}/box-#{version}.portable.gz"
  sha256 "db9b3d2ca2784665ba3324f5903b3ebceacb6399e11df03918404c5f56d1a152"

  def install
    mv "box-#{version}.portable", "box"
    bin.install "box"
  end
  test do
    system "#{bin}/box", "--version"
  end
end
