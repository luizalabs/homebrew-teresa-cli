class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.13.0/teresa-darwin-amd64"
  sha256 "207677b5f2ededf6dfe55e388446bd1cfecf7a378ae83c4e8a6fd82812b99449"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.13.0'

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end

class Teresa < TeresaCli
end
