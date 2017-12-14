class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.11.0/teresa-darwin-amd64"
  sha256 "183890149cbb14288e691926a3baa22633250fce61b4f82b116f918cf66d57b1"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.11.0'

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
