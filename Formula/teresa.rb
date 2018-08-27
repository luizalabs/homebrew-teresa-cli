class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.26.0/teresa-darwin-amd64"
  sha256 "e5ca5e1ce2afa2a7adc73825a8c9a8a73ad3ffe37e2fd98781aad3a7455e7de8"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.26.0"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
