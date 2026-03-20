class ObsidianNexus < Formula
  desc "Agent-friendly knowledge search engine for Obsidian vaults (CLI)"
  homepage "https://github.com/gorillaKim/obsidian-nexus"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-aarch64.tar.gz"
      sha256 "9c6612db26411ae642b15f13b9878f09ecabcff8383716b37e81d39bbc2eb671"
    end
    on_intel do
      url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/nexus-cli-darwin-x86_64.tar.gz"
      sha256 "979025df101302e8e20aa5c88fd092434b37765e57c91194ba6a4c14e185a445"
    end
  end

  def install
    bin.install "nexus"
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
