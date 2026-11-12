class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.4.0"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.0/acr-darwin-arm64.tar.gz"
      sha256 "6791d1973d5e44ee3b75aebb27e8f5397e2a42526e399c499a99fe9e9bd7477c"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.0/acr-darwin-amd64.tar.gz"
      sha256 "613f699b4083fccc7f3e7dd1afd74ce386a91b3ba70dea0686def39b9f25f310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.0/acr-linux-arm64.tar.gz"
      sha256 "8812629df27ecf980e2b8223504ec0c88f3ef76b24190d56d9737d57db2e1092"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.0/acr-linux-amd64.tar.gz"
      sha256 "436867c8b80c5b0ce84e58567a091fd951d98516ef3fee28400b32805f22c8a3"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
