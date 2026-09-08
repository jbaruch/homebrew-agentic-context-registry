class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.4"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.4/acr-darwin-arm64.tar.gz"
      sha256 "c1b3025295759f961f51c2fff8e9c3e3ba015eff86582ce22fbaf4e42fc03ead"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.4/acr-darwin-amd64.tar.gz"
      sha256 "c4090e48f87f92875582470c719df860569563ef508ee10ae552b11f37721dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.4/acr-linux-arm64.tar.gz"
      sha256 "c9a923fced7376205776a0a3896e3c17f57c7508fb9d8861d5101f3ecca185ab"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.4/acr-linux-amd64.tar.gz"
      sha256 "d0a461c69a604a935965985f580ebe3c4550847abb3a62fc0b9f3d708196b308"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
