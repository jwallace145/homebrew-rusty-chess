# homebrew-rusty-chess

Homebrew tap for [Rusty Chess](https://github.com/jwallace145/rusty-chess), a chess engine written in Rust.

## What is this repository?

This repository is a Homebrew tap that provides a formula for installing Rusty Chess on macOS via Homebrew. Homebrew taps are third-party repositories that extend Homebrew's package catalog, allowing users to install software that isn't available in the core Homebrew repository.

## Installation

To install Rusty Chess using this tap:

```bash
# Add the tap to your Homebrew
brew tap jwallace145/rusty-chess

# Install Rusty Chess
brew install rusty-chess
```

Or install directly in one command:

```bash
brew install jwallace145/rusty-chess/rusty-chess
```

## Usage

After installation, you can run Rusty Chess with:

```bash
rusty-chess --help
```

## About Rusty Chess

Rusty Chess is a chess engine written in Rust. For more information, source code, and documentation, visit the main project repository:

**[https://github.com/jwallace145/rusty-chess](https://github.com/jwallace145/rusty-chess)**

## Updating the Formula

For maintainers: When releasing a new version of Rusty Chess, update the following variables at the top of `rusty-chess.rb`:

```ruby
VERSION = "x.y.z"                    # New version number
MACOS_ARM64_SHA256 = "sha256hash..."  # SHA256 hash of the macOS ARM64 release artifact
```

The SHA256 hash can be obtained by running:

```bash
shasum -a 256 rusty-chess-vx.y.z-aarch64-apple-darwin.tar.gz
```

## License

This Homebrew formula is provided under the MIT License. Rusty Chess itself is also licensed under MIT.
