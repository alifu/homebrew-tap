cask "lf-git" do
  version "0.3.0"
  sha256 "036aeae9864e19b2c0ab26566f3b5deb7a98f26f0baf1a683507bada0da0d4d8"

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
