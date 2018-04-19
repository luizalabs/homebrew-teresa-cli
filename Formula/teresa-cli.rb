class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.20.0/teresa-darwin-amd64"
  sha256 "a2302dca23d36fabe3c42d646d015e8d49e319e0beba9b25f2adaa8d8a5c7b17"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.20.0'

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
