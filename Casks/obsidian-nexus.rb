cask "obsidian-nexus" do
  version "0.5.8"
  sha256 "a39bae04187c3fc636c79d158bd47c74398902eecd34f335a9db29ca7a38035b"

  url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/Obsidian-Nexus.dmg"
  name "Obsidian Nexus"
  desc "Agent-friendly knowledge search engine for Obsidian vaults"
  homepage "https://github.com/gorillaKim/obsidian-nexus"

  app "Obsidian Nexus.app"

  zap trash: [
    "~/.nexus",
    "~/Library/Application Support/com.obsidian-nexus.app",
    "~/Library/Caches/com.obsidian-nexus.app",
    "~/Library/Preferences/com.obsidian-nexus.app.plist",
    "~/Library/Logs/com.obsidian-nexus.app",
  ]
end
