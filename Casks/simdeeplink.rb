cask "simdeeplink" do
  version "0.0.11"
  sha256 "ce31551084f7d2f83bca1be3c384418e70bd31e5cc5736427bdc287dbfcee9ee"

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
