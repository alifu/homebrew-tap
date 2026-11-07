cask "lf-remac" do
  version "0.1.1"
  sha256 "0ae2ad07763c91b0c32ec6a983fef740d1564d905c323d7cee0fbdc08dbdcc89"

  url "https://github.com/alifu/LF-ReMac/releases/download/v#{version}/LF-ReMac-#{version}.zip"
  name "LF-ReMac"
  desc "Private remote desktop host for the LF-ReMac iPhone app"
  homepage "https://github.com/alifu/LF-ReMac"

  depends_on macos: :sonoma

  app "LF-ReMac.app"

  uninstall quit: "com.alifu.lfremac.host"

  zap trash: "~/Library/Preferences/com.alifu.lfremac.host.plist"

  caveats <<~EOS
    macOS blocks the first launch because LF-ReMac is not notarized. Open System Settings >
    Privacy & Security and choose "Open Anyway", or run:
      xattr -dr com.apple.quarantine /Applications/LF-ReMac.app

    On first start, allow Screen Recording (and Accessibility for remote control), then choose
    "Start Hosting" in the menu bar item.
  EOS
end
