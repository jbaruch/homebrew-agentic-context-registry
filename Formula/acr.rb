class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.2.1"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.1/acr-darwin-arm64.tar.gz"
      sha256 "c99eaf1de2fe93912abef5bb8b9a899b7d3a32f54f873e4d4b3a2b479623f1d7"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.1/acr-darwin-amd64.tar.gz"
      sha256 "530306d04a23a032a0f060eaae1e0d6996ce4b5cb6ec03bc3c5b59f6e819b6a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.1/acr-linux-arm64.tar.gz"
      sha256 "7dfb6844b3e5f350338abdde87b6983db5cac650e6a31c0b81179579fef79483"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.2.1/acr-linux-amd64.tar.gz"
      sha256 "d6c435927507e1ccdf4f2147069335aa92084d786c201127d5670deddb3cca5d"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
