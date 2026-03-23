class ObsidianNexus < Formula
  desc "Agent-friendly knowledge search engine for Obsidian vaults (CLI)"
  homepage "https://github.com/gorillaKim/obsidian-nexus"
  version "0.3.14"

  on_macos do
    on_arm do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-aarch64.tar.gz"
      sha256 "9e9f916f556903bfe2ed3418af0e071e40f630cfe4351b357c91d2eab4734956"
    end
    on_intel do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-x86_64.tar.gz"
      sha256 "90dc1e44667c11e97edcea5449593c129b4b68d492f32f0c1a115857d4162ccb"
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
