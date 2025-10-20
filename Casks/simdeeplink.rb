cask "simdeeplink" do
  version "0.0.4"
  sha256 "6004c808bb8f3aa6494929fc89c5fbd759d60fdb775aed755c53ab031dafe610"

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
