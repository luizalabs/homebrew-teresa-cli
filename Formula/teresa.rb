class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.21.0/teresa-darwin-amd64"
  sha256 "588d201742e5ff9daa76290a39e7f4fb270543f246b513c1c5ba97eb2808e04e"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.21.0'

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
