cask "simdeeplink" do
  version "0.0.7"
  sha256 "6db621d06a628e9b3dd8886e0dec9c1e83f0a2bb2db8ef1f09e3c8a45ac4635d"

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
