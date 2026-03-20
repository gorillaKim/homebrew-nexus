cask "obsidian-nexus" do
  version "0.3.6"
  sha256 "81c071b95ef61cb2515ada62a038ddbeb1803e39647ac53b926849c99fdbabd2"

  url "https://github.com/gorillaKim/obsidian-nexus/releases/download/v#{version}/Obsidian-Nexus.dmg"
  name "Obsidian Nexus"
  desc "Agent-friendly knowledge search engine for Obsidian vaults"
  homepage "https://github.com/gorillaKim/obsidian-nexus"

  app "Obsidian Nexus.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{appdir}/Obsidian Nexus.app"],
      sudo: false
  end

  zap trash: [
    "~/.nexus",
    "~/Library/Application Support/com.obsidian-nexus.app",
    "~/Library/Caches/com.obsidian-nexus.app",
    "~/Library/Preferences/com.obsidian-nexus.app.plist",
    "~/Library/Logs/com.obsidian-nexus.app",
  ]
end
