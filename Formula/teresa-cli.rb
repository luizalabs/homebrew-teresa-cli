class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa-cli"
  url "https://github.com/luizalabs/teresa/releases/download/v0.5.0/teresa-darwin-amd64"
  sha256 "d48b7ce9768ad66c2b074e0eddd2e5a58f0042d99deba78f7b103a6a1a4f0e30"
  head "https://github.com/luizalabs/teresa.git"
  version 'v0.5.0'

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
