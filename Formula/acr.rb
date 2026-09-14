class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.2.0"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.0/acr-darwin-arm64.tar.gz"
      sha256 "1ca89160c3c72f76f15d0b7f4b712811bd50ac85bbd72f5beba84473e5e62274"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.0/acr-darwin-amd64.tar.gz"
      sha256 "b1eca3c2de4732d0cec2c63556f0084db1c712139a4203b1ec3cc64fc3857393"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.0/acr-linux-arm64.tar.gz"
      sha256 "736fd912c7b436ae2844d194e7ab84c9d8112c8fa34e5797f5f02c505754b1f9"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.0/acr-linux-amd64.tar.gz"
      sha256 "46ce2ce752068dfdf14750f77065dbc628d01b2375f13162776d98c9ea5500a4"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
