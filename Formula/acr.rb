class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.3.2"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.2/acr-darwin-arm64.tar.gz"
      sha256 "e575e5c26f1b75957299d39d674a57cbdac31dab4d987cf9c1638108d8c0753b"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.2/acr-darwin-amd64.tar.gz"
      sha256 "b80dc2623cd74571ce7ef406dd0e7d16a06365808d134d9a2d8c1296535e8ed1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.2/acr-linux-arm64.tar.gz"
      sha256 "6fed52ee2df87d2284228be58ca6bfd69217f099245547d533bc43b6a065fc56"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.2/acr-linux-amd64.tar.gz"
      sha256 "a34389f29d9924191154490497363d403d41222afccba300e8c7bc1862b01df0"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
