class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.24.0/teresa-darwin-amd64"
  sha256 "a354cb47889bec934c7008267b41efb12286ab49e39f2da66a75c09d39f732bd"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.24.0"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
