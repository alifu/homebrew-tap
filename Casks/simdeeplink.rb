cask "simdeeplink" do
  version "0.0.10"
  sha256 "796e400febaac53aa09bbfd482f4e667e858c6e0fdcbc09d5152f77d1e528c8a"

  url "https://github.com/alifu/SimDeeplink/releases/download/v#{version}/SimDeeplink.zip"
  name "SimDeeplink"
  desc "Menu bar app that runs deeplinks on iOS simulators and Android emulators"
  homepage "https://github.com/alifu/SimDeeplink"

  depends_on macos: :sonoma

  app "stage/SimDeeplink.app"

  uninstall quit: "com.alifu.SimDeeplink"

  zap trash: [
    "~/Library/Application Support/com.alifu.SimDeeplink",
    "~/Library/Caches/com.alifu.SimDeeplink",
    "~/Library/Preferences/com.alifu.SimDeeplink.plist",
    "~/Library/Saved Application State/com.alifu.SimDeeplink.savedState",
    "~/Library/WebKit/com.alifu.SimDeeplink",
  ]
end
