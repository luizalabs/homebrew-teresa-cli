class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.17.0/teresa-darwin-amd64"
  sha256 "c02d545b1622ac91ff5eaab05692943510d610df56fd17420d801a2b103c0772"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.17.0'

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
