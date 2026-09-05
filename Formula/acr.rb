class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.2"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.2/acr-darwin-arm64.tar.gz"
      sha256 "f5374574f3716509a9aa39a59149eb112c7e125a8fe01d1b31b4c534e6d4a92c"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.2/acr-darwin-amd64.tar.gz"
      sha256 "29bf10629c997d02a4b88f8ad341ad1f8857fa5ef3eace09648efeea1cc2ce1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.2/acr-linux-arm64.tar.gz"
      sha256 "a3d639dfc3ab745cdc03316914d61cd7fd9ad8a22c03268ad432e61622d64b12"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.2/acr-linux-amd64.tar.gz"
      sha256 "51348164ffcf95e46981bf1b94f7a58db3d302966048221a31b7bb93165bef94"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
