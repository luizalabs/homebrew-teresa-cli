class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.34.0/teresa-darwin-amd64"
  sha256 "f80aeb801599df316bb4805691f73b28081ef42c5692dcb94957dc8e5d39a045"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.34.0"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
