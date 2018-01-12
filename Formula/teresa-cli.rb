class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.12.0/teresa-darwin-amd64"
  sha256 "b32a16888a1decdc090980b4368a46f000acec7fb67c65b0fa346244709f6e76"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.12.0'

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
