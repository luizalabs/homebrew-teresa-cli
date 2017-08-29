class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.7.0/teresa-darwin-amd64"
  sha256 "63f1b8af8e973e83c6f35014e14973b8d2bb4fda0487908b2469462da4c3abcc"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.7.0'

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