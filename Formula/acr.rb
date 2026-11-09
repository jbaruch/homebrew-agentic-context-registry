class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.3.1"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.1/acr-darwin-arm64.tar.gz"
      sha256 "3fc244bc70a0464c9917169708ab5060cc29b58133b482b808da9fc48a518216"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.1/acr-darwin-amd64.tar.gz"
      sha256 "dccc46473b6af48869f086a500027c3a2e393a2ca431d465f70443c86918965c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.1/acr-linux-arm64.tar.gz"
      sha256 "716a84e647252c4b889cf50b5b2a8f742f649b0cce7728051e2cf3f94d52d875"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.3.1/acr-linux-amd64.tar.gz"
      sha256 "ba1781ca0e6a29b0a9bfa20995938c9325c0e1d4dd43ef066948f768221d3b19"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
