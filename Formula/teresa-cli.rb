class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.16.0/teresa-darwin-amd64"
  sha256 "415c95dd17cf0fe9a8e0fd9ea7679d7c0ed7c59513a585020f993e2fe980e20e"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.16.0'

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
