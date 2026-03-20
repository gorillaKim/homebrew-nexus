cask "obsidian-nexus" do
  version "0.3.4"
  sha256 "044ba71550925f9318b84cc8d85a426e534f8aaaae68fcadad7bc8da339c779c"

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
