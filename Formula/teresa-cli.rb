class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa-cli"
  url "https://github.com/luizalabs/teresa-cli/releases/download/v0.3.1/teresa-darwin-amd64"
  sha256 "680af3a46ecb9908811551509bac3d95e16af5d7a6450f778de33b1d74ec607a"
  head "https://github.com/luizalabs/teresa-cli.git"

  def install
    system "mv", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
