class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.8.0/teresa-darwin-amd64"
  sha256 "99c03a116dbf51f7c71c9c24f7e30a67a6b39aca87cab4ea1374cbcf511fa19f"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.8.0'

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
