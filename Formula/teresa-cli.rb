class TeresaCli < Formula
  desc "Teresa client"
  homepage "https://github.com/luizalabs/teresa-cli"
  url "https://github.com/luizalabs/teresa-cli/releases/download/v0.3.2/teresa-darwin-amd64"
  sha256 "ba2fa97159cfba6705966e96864eca9e6704bcd63a16ff11d3943a7d4ac0d326"
  head "https://github.com/luizalabs/teresa-cli.git"
  version 'v0.3.2'

  bottle :unneeded

  def install
    system "cp", "teresa-darwin-amd64", "teresa"
    bin.install "teresa"
  end

  test do
    system "teresa", "version"
  end
end
