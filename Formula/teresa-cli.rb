class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.15.0/teresa-darwin-amd64"
  sha256 "5b7b9b2cbbd40f1d56d42093352be6f03f0e57c8ac5c6e089585b26f39dc7db4"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.15.0'

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
