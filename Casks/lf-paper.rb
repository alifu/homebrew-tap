cask "lf-paper" do
  version "1.0"
  sha256 "ec16bf212e31ac1d5fdb071dfb56399a1acf79798fb8d930069d09046ef3dec9"

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
