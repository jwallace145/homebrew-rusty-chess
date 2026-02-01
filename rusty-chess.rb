class RustyChess < Formula
  desc "Chess engine written in Rust"
  homepage "https://github.com/jwallace145/rusty-chess"
  version "1.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jwallace145/rusty-chess/releases/download/v1.4.8/rusty-chess-v1.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "f737026edfc87807d1239784ebed34f34161eddc73634eb5d087de4fe79d5c58"
    end
  end

  def install
    bin.install "player-vs-engine" => "rusty-chess"
  end

  test do
    system "#{bin}/rusty-chess", "--help"
  end
end
