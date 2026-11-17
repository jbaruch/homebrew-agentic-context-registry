class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.4.3"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.3/acr-darwin-arm64.tar.gz"
      sha256 "b2f72eb05b8c32799da1ece6421d307156eabfdebbc4d7b3ab8a44d254d1ce45"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.3/acr-darwin-amd64.tar.gz"
      sha256 "42640dd5f65af9f1fc3ee457dfa1d4c83a56eadb16d0375eb9bd7921e68b77e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.3/acr-linux-arm64.tar.gz"
      sha256 "686a0b5344cdb806f8d95fc0ebca8d8a7e59cf2ae77720b2b662bd72dccf33e2"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.3/acr-linux-amd64.tar.gz"
      sha256 "0e70a3455e7dd710da969404547dce5cb18b6da09d4ee31fa685de28ff38c58d"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
