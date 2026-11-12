cask "claude-todo" do
  version "1.2.0"
  sha256 "5ea7751901ce6d25f34349963a9474cc3b5a551265563d7c13609f2ed8b8faf8"

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
