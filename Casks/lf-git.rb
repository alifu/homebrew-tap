cask "lf-git" do
  version "0.5.0"
  sha256 "c7207e65b4cf9b3cb9c02bc08a32455d0b00afd72f331e71a3357842be63c804"

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
