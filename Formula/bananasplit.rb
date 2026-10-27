class Bananasplit < Formula
  desc "Split expenses and settle balances on BananaSplit from the terminal"
  homepage "https://docs.bananasplit.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.1/banana-darwin-arm64.tar.gz"
      sha256 "ce40340682be19801a907ca411639fe7a4d6c49959798e1693500f102558d1ad"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.1/banana-darwin-x64.tar.gz"
      sha256 "06cd781d1e918b5074d8f29e21118fc9aef425e01610ba412b000104dcf58696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.1/banana-linux-arm64.tar.gz"
      sha256 "6512eb812f0582b808e4bef3f386b3725ffb0db6d3f172bfe13ba581480d12c4"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.1/banana-linux-x64.tar.gz"
      sha256 "f90c9f7c8a341476019b6d4eadc27a068dada10c411471dfef49dfb4b24b789e"
    end
  end

  def install
    bin.install "banana"
    bin.install_symlink "banana" => "bananasplit"
  end

  test do
    assert_match "banana <command>", shell_output("#{bin}/banana --help")
    assert_match "bananasplit <command>", shell_output("#{bin}/bananasplit --help")
  end
end
