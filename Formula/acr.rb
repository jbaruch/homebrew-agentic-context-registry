class Acr < Formula
  desc "GitHub-native package manager for coding-agent context"
  homepage "https://github.com/jbaruch/agentic-context-registry"
  version "0.1.5"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/jbaruch/agentic-context-registry/releases/latest"
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.5/acr-darwin-arm64.tar.gz"
      sha256 "c995368ebef498678576985242418630b22b290a2246a48c8510b202194403bd"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.5/acr-darwin-amd64.tar.gz"
      sha256 "3cf892ee006976fd1fc45d86fb92431724adb1d36ce9a8e65fdfa346cc4df345"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.5/acr-linux-arm64.tar.gz"
      sha256 "2ac54869bbde18b0bec59a05f7bf16f80fc1f8a2d4085b63386eb6d16b99a9db"
    else
      url "https://github.com/jbaruch/agentic-context-registry/releases/download/v0.1.5/acr-linux-amd64.tar.gz"
      sha256 "5a6f58da78a14f64e2b83fc3c397726c3879942d995aae35911037b8a2f1b9ee"
    end
  end

  def install
    bin.install "acr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acr version")
  end
end
