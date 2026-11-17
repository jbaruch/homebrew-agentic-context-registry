class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.4.2"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.2/acr-darwin-arm64.tar.gz"
      sha256 "d34e6873c7d7e3a1d9d05d81f0e13d2295b47ddac5fea6edbded3657312e08ef"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.2/acr-darwin-amd64.tar.gz"
      sha256 "05ef0149ed723c96bb0d551d91e78bb0490029424d9bcd13a276e06b062b1471"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.2/acr-linux-arm64.tar.gz"
      sha256 "7a22ef137f7806bc52a8bec6bba32425f4882227fd4143fd8a7cf9c6b8e00557"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.4.2/acr-linux-amd64.tar.gz"
      sha256 "aca314f50e186948ce22ab30a0ad087da7ace96c4682dc2bdb9b1085ab3f7d96"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
