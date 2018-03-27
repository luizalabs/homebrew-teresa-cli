class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.18.0/teresa-darwin-amd64"
  sha256 "184e08dda2a0dc10a6842a94c527032946ff7bdcc1fde7c03fb47548db182220"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.18.0'

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
