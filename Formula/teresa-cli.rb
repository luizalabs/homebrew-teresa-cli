class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.19.0/teresa-darwin-amd64"
  sha256 "bd33111aee9c3d57af99e8275d6899ea5b2d6ed2b548ad8496dd14f0bd69541f"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.19.0'

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
