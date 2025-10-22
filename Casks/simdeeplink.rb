cask "simdeeplink" do
  version "0.0.5"
  sha256 "ee1336146c8e1722e9bbaa8d49d4ff4de0006cd024699c99688faca5773410fb"

  url "https://github.com/alifu/SimDeeplink/releases/download/#{version}/SimDeeplink.zip"
  name "SimDeeplink"
  desc "SimDeeplink (Deeplink Runner) is a desktop utility designed to make testing and running app deeplinks in Simulator effortless."
  homepage "https://github.com/alifu/SimDeeplink"

  app "SimDeeplink.app"

  uninstall quit: "AppWork.SimDeeplink"

  zap trash: [
    "~/Library/Preferences/AppWork.SimDeeplink.plist",
    "~/Library/Application Support/SimDeeplink",
  ]
end
