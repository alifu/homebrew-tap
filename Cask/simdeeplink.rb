cask "simdeeplink" do
  version "0.0.1"
  sha256 "f6d4bcfd62a57ff112638236d847d43f72c9ff7dc6214ae28fedc994c5137b05"

  url "https://github.com/alifu/SimDeeplink/releases/download/0.0.1/SimDeeplink.zip"
  name "SimDeeplink"
  desc "SimDeeplink (Deeplink Runner) is a desktop utility designed to make testing and running app deeplinks in Simulator effortless."
  homepage "https://github.com/alifu/SimDeeplink"

  app "SimDeeplink.app"

  zap trash: [
    "~/Library/Preferences/AppWork.SimDeeplink.plist",
    "~/Library/Application Support/SimDeeplink",
  ]
end
