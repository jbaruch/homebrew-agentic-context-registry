class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.4.1"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.1/acr-darwin-arm64.tar.gz"
      sha256 "f5c471beef751d3d07321ee10045ecb08633b2b1d59b3727249ae358040c6fbe"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.1/acr-darwin-amd64.tar.gz"
      sha256 "b71e322efbf30e81997c7b8dcff90913087f15a6408d9201634ba7bf00fe5cca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.1/acr-linux-arm64.tar.gz"
      sha256 "d822a8d041b6c2f19ae454bc9e2f356830baeeb34304fc3f991bcafc16f07e4d"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.1/acr-linux-amd64.tar.gz"
      sha256 "48c20f720af06f2e517eb0ed221bec41147375bc663e12e25142872957050ff6"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
