cask "claude-todo" do
  version "1.1.0"
  sha256 "2dbe16a0266e07a28f4de6792209e138a6ae879eaf0f37596f51efd256bb997c"

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
