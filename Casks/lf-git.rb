cask "lf-git" do
  version "0.2.0"
  sha256 "f077c391555a9bbd30d6918ebb978c3d4136051e7b068384f735eb00e7d5c0fc"

  url "https://github.com/alifu/LF-Git/releases/download/v#{version}/LF-Git.zip"
  name "LF-Git"
  desc "Merge tool and Git client for conflicts in files of any size"
  homepage "https://github.com/alifu/LF-Git"

  depends_on macos: ">= :sonoma"

  app "LF-Git.app"
  binary "lfgit"

  uninstall quit: "com.alifu.LF-Git"

  zap trash: [
    "~/.config/lfgit",
    "~/Library/Preferences/com.alifu.LF-Git.plist",
    "~/Library/Saved Application State/com.alifu.LF-Git.savedState",
  ]
end
