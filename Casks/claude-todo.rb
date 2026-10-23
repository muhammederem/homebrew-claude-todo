cask "claude-todo" do
  version "1.0.0"
  sha256 "cb16fca75db376bec93170c6221503dc2341cbb3e7cd961354fb33a1ae7a6796"

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
