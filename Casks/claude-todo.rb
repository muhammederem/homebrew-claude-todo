cask "claude-todo" do
  version "1.1.1"
  sha256 "17992bd2ec715daf7024517b028b0032b223c0219da15f00c21a3594d93c04ec"

  url "https://github.com/muhammederem/claude-todo/releases/download/v#{version}/ClaudeTodo.dmg"
  name "Claude To-Do"
  desc "Menu bar app and widget showing unfinished work across Claude Code sessions"
  homepage "https://github.com/muhammederem/claude-todo"

  depends_on macos: :sequoia

  app "ClaudeTodo.app"

  zap trash: [
    "~/Library/Application Support/ClaudeTodo",
    "~/Library/Preferences/com.muhammederem.claude-todo.plist",
  ]
end
