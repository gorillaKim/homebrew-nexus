class ObsidianNexus < Formula
  desc "Agent-friendly knowledge search engine for Obsidian vaults (CLI)"
  homepage "https://github.com/gorillaKim/obsidian-nexus"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-aarch64.tar.gz"
      sha256 "84566d3ac89166aad981ad01b4aca46709e37ad6845fb7c0fb92025f23e3d458"
    end
    on_intel do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-x86_64.tar.gz"
      sha256 "84f3894c3bdf7bc45b7320e921815091a3da9f47b3ecb7fee787fd310643b67d"
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
