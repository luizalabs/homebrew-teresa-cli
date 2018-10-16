class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.27.1/teresa-darwin-amd64"
  sha256 "9f60f9517ed4a0a0469577cbda32433a3838c6a3d30e79aa65f923bc8ebfc42c"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.27.1"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
