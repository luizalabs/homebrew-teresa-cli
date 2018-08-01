class Teresa < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa"
  url "https://github.com/luizalabs/teresa/releases/download/v0.25.0/teresa-darwin-amd64"
  sha256 "67d75cda52517940821aa6902beea44271f4c77fb5a8aa69ddda328b79c66870"
  head "https://github.com/luizalabs/teresa.git"
  version "v0.25.0"

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
