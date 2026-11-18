class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.5.0"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.0/acr-darwin-arm64.tar.gz"
      sha256 "c6e93f9f631eca20cb1287198b9c25d44662dae2738a934e4f6321ffb3fc0f56"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.0/acr-darwin-amd64.tar.gz"
      sha256 "ed61e34dba8e83c42cf7c38a16a9f1e967c1d8c69d1d41b320a5cc493bb11794"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.0/acr-linux-arm64.tar.gz"
      sha256 "24762c6da61b76b1d6764c164060391fac05821665e20a54b51a5305c2c97cb2"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.5.0/acr-linux-amd64.tar.gz"
      sha256 "bc93bbdb8ec46ce664d54f1bad8cd76439ab184ef4604b3d144b2c31b810d4b8"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
