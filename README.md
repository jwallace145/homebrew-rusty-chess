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

## Automated Updates

This repository is configured to automatically update the Homebrew formula when a new version of Rusty Chess is released. The automation works as follows:

1. When a new release is published in the [rusty-chess](https://github.com/jwallace145/rusty-chess) repository, a GitHub workflow triggers this repository
2. The workflow automatically:
   - Detects the new version number
   - Downloads the macOS ARM64 release artifact
   - Calculates the SHA256 hash
   - Updates `rusty-chess.rb` with the new version and hash
   - Commits and pushes the changes

### Setup Instructions

To enable automated updates, you need to set up the cross-repository trigger:

1. **Create a Personal Access Token (PAT)**:
   - Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Generate a new token with `repo` scope
   - Name it something like "Homebrew Tap Updates"

2. **Add the token to rusty-chess repository**:
   - Go to the rusty-chess repository settings
   - Navigate to Secrets and variables → Actions
   - Add a new repository secret named `HOMEBREW_TAP_TOKEN`
   - Paste the PAT you created

3. **Copy the trigger workflow to rusty-chess**:
   - Copy `.github/workflows/trigger-from-rusty-chess.yml` from this repository
   - Add it to the rusty-chess repository at `.github/workflows/update-homebrew-tap.yml`
   - Commit and push

That's it! Now whenever you publish a new release in rusty-chess, the Homebrew formula will automatically update.

### Manual Update

You can also manually trigger the update workflow:

1. Go to the Actions tab in this repository
2. Select "Update Homebrew Formula" workflow
3. Click "Run workflow"
4. Optionally specify a version, or leave blank to use the latest release

### Manual Formula Update

If needed, you can still manually update the formula by editing the variables at the top of `rusty-chess.rb`:

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
