cask "papan" do
  version "0.0.1-alpha-1"
  sha256 "021ba6c84b8cf9b6889ccf725f07b906c18c5a7aadc7172f13a0437be9fe66e0"

  url "https://github.com/alifu/papan/releases/download/v#{version}/Papan.zip"
  name "Papan"
  desc "Desktop API client, mock server and journey runner"
  homepage "https://github.com/alifu/papan"

  depends_on macos: :ventura

  app "Papan.app"

  uninstall quit: "com.papan-lifux.app"

  zap trash: [
    "~/Library/Application Support/com.papan-lifux.app",
    "~/Library/Caches/com.papan-lifux.app",
    "~/Library/Logs/com.papan-lifux.app",
    "~/Library/Saved Application State/com.papan-lifux.app.savedState",
    "~/Library/WebKit/com.papan-lifux.app",
  ]
end
