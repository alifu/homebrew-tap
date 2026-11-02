cask "simdeeplink" do
  version "0.0.8"
  sha256 "cf7981fd6879f1e8afe384133676a2015b8614625ae42e709159255e0bfee9f5"

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
