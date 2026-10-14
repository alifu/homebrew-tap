cask "lf-paper" do
  version "1.0.1"
  sha256 "a0db8a35f9dca691339394e79cb3f61ea3a73f31f62c123aba8f91e7d016062b"

  url "https://github.com/alifu/LF-Paper/releases/download/#{version}/LF-Paper.zip"
  name "LF-Paper"
  desc "Markdown and JSON workbench with live preview, validation and comparison"
  homepage "https://github.com/alifu/LF-Paper"

  depends_on macos: ">= :sequoia"

  app "LF-Paper.app"

  uninstall quit: "AppWork.LF-Paper"

  zap trash: [
    "~/Library/Application Scripts/AppWork.LF-Paper",
    "~/Library/Containers/AppWork.LF-Paper",
  ]
end
