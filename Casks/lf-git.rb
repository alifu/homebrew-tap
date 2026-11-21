cask "lf-git" do
  version "0.6.0"
  sha256 "8eaed8bb894afb9c77165cb735e72543fc247228784be5f5b80eadc655e42dd1"

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
