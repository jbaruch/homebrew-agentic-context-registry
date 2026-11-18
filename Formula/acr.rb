class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.5.1"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.1/acr-darwin-arm64.tar.gz"
      sha256 "21450d5f093093747943feddd0c23b868819b024f4d1f6f28b78c1a8a3cef3f1"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.1/acr-darwin-amd64.tar.gz"
      sha256 "5f73c30ad1af1bfb8662c27825039082c780a9c5b2eef98dee0feccf18b00d3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.1/acr-linux-arm64.tar.gz"
      sha256 "bd2e5bc6eaef09e342967d1473a91ca65c03b3f48a457d14e28d0b5aa0ef09db"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.1/acr-linux-amd64.tar.gz"
      sha256 "c529a86d49664c06f0242115b0fd44e4b48686f3ab046f5344ac1570becaf0e7"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
