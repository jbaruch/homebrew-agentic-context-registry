class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.6"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.6/acr-darwin-arm64.tar.gz"
      sha256 "4859ddcc5598b906ee41190ccb980ba818b646b36318ac1cea8312f46afb856f"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.6/acr-darwin-amd64.tar.gz"
      sha256 "87449195c01cd654f4756c20a93166f423f10a6fd345a91e14df59882e157c52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.6/acr-linux-arm64.tar.gz"
      sha256 "7167fbb608932f0017d0558badf6af6dfc0b97d3af279ba034d8e8af9e627884"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.6/acr-linux-amd64.tar.gz"
      sha256 "e467dd90b2edf28861acda22b98cf9d2a409ee2222b2bef5b5c23b39bd35339b"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
