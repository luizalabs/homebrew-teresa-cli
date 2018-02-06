class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.14.0/teresa-darwin-amd64"
  sha256 "340ec5e321d228608d765362169d935c3cb59655649fd0ae77c0d5484258276f"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.14.0'

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
