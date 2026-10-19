cask "lf-git" do
  version "0.2.3"
  sha256 "f76fb162daa4cfc4693069f5947f0d1533019b96f53a6d7f59034ce1be525254"

  url "https://github.com/alifu/LF-Git/releases/download/v#{version}/LF-Git.zip"
  name "LF-Git"
  desc "Merge tool and Git client for conflicts in files of any size"
  homepage "https://github.com/alifu/LF-Git"

  depends_on macos: :sonoma

  app "stage/LF-Git.app"
  binary "stage/lfgit"

  uninstall quit: "com.alifu.LF-Git"

  zap trash: [
    "~/.config/lfgit",
    "~/Library/Preferences/com.alifu.LF-Git.plist",
    "~/Library/Saved Application State/com.alifu.LF-Git.savedState",
  ]
end
