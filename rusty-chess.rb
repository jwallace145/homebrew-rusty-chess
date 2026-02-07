# ============================================================================
# Release Configuration
# Update these variables when releasing a new version
# ============================================================================
VERSION = "1.6.0"
MACOS_ARM64_SHA256 = "1eef25acc0307c0196a517d288bca1951a49f4ce81f8d55f5f842f836b233136"

# ============================================================================
# Homebrew Formula
# ============================================================================
class RustyChess < Formula
  desc "Chess engine written in Rust"
  homepage "https://github.com/jwallace145/rusty-chess"
  version VERSION
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jwallace145/rusty-chess/releases/download/v#{VERSION}/rusty-chess-v#{VERSION}-aarch64-apple-darwin.tar.gz"
      sha256 MACOS_ARM64_SHA256
    end
  end

  def install
    bin.install "player-vs-engine" => "rusty-chess"
  end

  test do
    system "#{bin}/rusty-chess", "--help"
  end
end
