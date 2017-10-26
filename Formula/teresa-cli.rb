class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.9.0/teresa-darwin-amd64"
  sha256 "4461fd6c2ce6ee478119ad2fda08eb8ca001cbbe801006774fb343da51f31689"
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
