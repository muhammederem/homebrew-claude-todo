cask "claude-todo" do
  version "1.2.1"
  sha256 "40e2e553b0565071903428b6f8addf1e31f6866767926cb2710a3a7a828a833b"

  url "https://github.com/muhammederem/claude-todo/releases/download/v#{version}/Leftovers.dmg"
  name "Leftovers"
  desc "Menu bar app and widget showing unfinished work across Claude Code sessions"
  homepage "https://github.com/muhammederem/claude-todo"

  depends_on macos: :sequoia

  app "Leftovers.app"

  zap trash: [
    "~/Library/Application Support/ClaudeTodo",
    "~/Library/Preferences/com.muhammederem.claude-todo.plist",
  ]
end
