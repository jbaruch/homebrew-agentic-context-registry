class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.1"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.1/acr-darwin-arm64.tar.gz"
      sha256 "a15053b6f664aff159dee4ddd4efb9b788455a50c274c1335495ae07b096b060"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.1/acr-darwin-amd64.tar.gz"
      sha256 "948760cb9994936bccbfb614f54e29414385c67386a3c7c78f7b70e0c35dfef7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.1/acr-linux-arm64.tar.gz"
      sha256 "6b3502a4af7327f2e57d7289cb0cf70ad3b70a94022a4e800bc0314ef69b758b"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.1/acr-linux-amd64.tar.gz"
      sha256 "331ea86013a38c849ec616b9e53e50ff096b4e87542906459f0994f9601fc4c0"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
