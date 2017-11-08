class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.10.0/teresa-darwin-amd64"
  sha256 "cda28441bf35f80954f5640e9ba6a9c60a76024062511e3de8b611c773b58af9"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.9.0'

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
