class Bananasplit < Formula
  desc "Split expenses and settle balances on BananaSplit from the terminal"
  homepage "https://docs.bananasplit.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.0/banana-darwin-arm64.tar.gz"
      sha256 "42862823bf9314238b439222183db038afed4b371a9b09e1e2e352051c32294f"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.0/banana-darwin-x64.tar.gz"
      sha256 "671041270c18196f7f3ee4dd3277dfc14944eba58e2105f4aed7e33de777fd6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.0/banana-linux-arm64.tar.gz"
      sha256 "52561f6347c0403a4de7e4bb20b5705a19e0d1901e5d9d0e8427135d7357a78c"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.0/banana-linux-x64.tar.gz"
      sha256 "1b56187bd741ee5f1132b49368ea01b8be7eaefbb68f5d6060d5b13124fb4e80"
    end
  end

  def install
    bin.install "banana"
    bin.install_symlink "banana" => "bananasplit"
  end

  test do
    assert_match "banana <command>", shell_output("#{bin}/bananasplit --help")
  end
end
