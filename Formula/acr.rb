class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.4.4"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.4/acr-darwin-arm64.tar.gz"
      sha256 "339b4cd0d81abcbcb08d7328fcf19d781431c21249bfa8db589bc2af0c99f560"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.4/acr-darwin-amd64.tar.gz"
      sha256 "3f729a1a418636ed5d25ad3aed8fa3ac2bd63380e9bc41287da9ba216b492a87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.4/acr-linux-arm64.tar.gz"
      sha256 "aae40b4c6ee4942dd55d85c118747415f69be8d560472be16b603ef94cb8bab0"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.4/acr-linux-amd64.tar.gz"
      sha256 "9840e56baf2cfab89efe5c2e94d03619ed84406a5fc4ba7c4c8a7164b29fa3aa"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
