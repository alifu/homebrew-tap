cask "simdeeplink" do
  version "0.0.2"
  sha256 "e68713ff99512c4ae7ba7ded510bc7ad3b7d4f65c77a20d2c15c97d0dd60c790"

  url "https://github.com/alifu/SimDeeplink/releases/download/#{version}/SimDeeplink.zip"
  name "SimDeeplink"
  desc "SimDeeplink (Deeplink Runner) is a desktop utility designed to make testing and running app deeplinks in Simulator effortless."
  homepage "https://github.com/alifu/SimDeeplink"

  app "SimDeeplink.app"

  zap trash: [
    "~/Library/Preferences/AppWork.SimDeeplink.plist",
    "~/Library/Application Support/SimDeeplink",
  ]

  uninstall delete: [
    "/Applications/SimDeeplink.app",
    "~/Applications/SimDeeplink.app",
  ]
end
