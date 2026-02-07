# ============================================================================
# Release Configuration
# Update these variables when releasing a new version
# ============================================================================
VERSION = "1.6.1"
MACOS_ARM64_SHA256 = "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
