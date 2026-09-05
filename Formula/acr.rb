class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.3"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.3/acr-darwin-arm64.tar.gz"
      sha256 "36453597fdb32c6b24b573a3a1447f75cc22eaa1270c2a8757c396d5bff525ed"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.3/acr-darwin-amd64.tar.gz"
      sha256 "b26d23d1f99daff0b9e3a170cb9ba53383e889cefc58991e37650d90506b8736"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.3/acr-linux-arm64.tar.gz"
      sha256 "b60814cb4f2bfa874aa719cc603708927dcfcd0a41d6b6575e3096ea78f40cc7"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.3/acr-linux-amd64.tar.gz"
      sha256 "145e8db1cb77412fb6788f8acdc163015cf354f9eb7b460818f9d9e7135d5202"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
