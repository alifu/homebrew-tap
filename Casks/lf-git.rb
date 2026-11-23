cask "lf-git" do
  version "0.6.1"
  sha256 "bff05ae377bdac93506e172c8b9ba243b23b2c80e069ba9cb948ad72e18325fb"

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
