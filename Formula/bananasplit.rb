class Bananasplit < Formula
  desc "Split expenses and settle balances on BananaSplit from the terminal"
  homepage "https://docs.bananasplit.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.2/banana-darwin-arm64.tar.gz"
      sha256 "338269dece3ede521c8511de6fe9d7426b20e6dd8efd1fb84f8a5cffbffb5c72"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.2/banana-darwin-x64.tar.gz"
      sha256 "b5e171aa83c7916ef3d8d2d7ab047840a394bd6583e91227fba1dd08d13ae5c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.2/banana-linux-arm64.tar.gz"
      sha256 "a16a62aea884da268559b20ab7ab328add07f4760d281e37cdd04460253cb26f"
    end
    on_intel do
      url "https://github.com/teotti/banana-cli/releases/download/v0.5.2/banana-linux-x64.tar.gz"
      sha256 "c5837bd92dff40a55df1563a4f325f933622147dc42acec17ad4592048d5d830"
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
