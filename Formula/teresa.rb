class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.30.1/teresa-darwin-amd64"
  sha256 "e467bd76235a63a9af7a4dbfaf217ac21b8fa5f3d1bde6412f45349962fc482e"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.30.1"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
