class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.6.0"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.6.0/acr-darwin-arm64.tar.gz"
      sha256 "0a41c66778f37215b80c8a967a2aa89c73b98b71d7e6457e118f74f2766675b9"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.6.0/acr-darwin-amd64.tar.gz"
      sha256 "c4ffe7d982d6fee491c500097d28eae392e4afb16aa0ce3357645330d4200689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.6.0/acr-linux-arm64.tar.gz"
      sha256 "062eabd5217246f03195fb9d82f7f059ea674ca6406b6fbdb7e00d66a34d840d"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.6.0/acr-linux-amd64.tar.gz"
      sha256 "ebdcd78473c2a052624a03af84a61dce1f88e55b935320bd40f4918e504424c8"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
