class ObsidianNexus < Formula
  desc "Agent-friendly knowledge search engine for Obsidian vaults (CLI)"
  homepage "https://github.com/gorillaKim/obsidian-nexus"
  version "0.3.11"

  on_macos do
    on_arm do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-aarch64.tar.gz"
      sha256 "3d2adf2571fe3e37cb36f0c17607b7ef6e69957c2da0febf5a51137ca87a3c9b"
    end
    on_intel do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-x86_64.tar.gz"
      sha256 "0699e57bb555a6406d81c10c5928a9f2e986c5ecbc885db944a53abb5c2daa0e"
    end
  end

  def install
    bin.install "obs-nexus"
    bin.install "nexus-mcp-server"
  end

  def post_install
    ohai "Obsidian Nexus 설치 완료!"
    ohai "다음 단계:"
    ohai "  1. nexus setup          # 초기화 (Ollama 확인, DB 생성)"
    ohai "  2. nexus project add --name 'my-vault' --path /path/to/vault"
    ohai "  3. nexus index my-vault # 문서 인덱싱"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nexus --version")
  end
end
