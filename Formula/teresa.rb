class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.23.0/teresa-darwin-amd64"
  sha256 "9a50d57231c2f42bd1676b82baf1f2d04d1a465ba773eb615a5477cc556fc118"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.23.0'

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
