cask "simdeeplink" do
  version "0.0.3"
  sha256 "ec84e2c491a311fd5914fcce1bf6b3cca024e0aede880359af68c8fc0be26507"

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
