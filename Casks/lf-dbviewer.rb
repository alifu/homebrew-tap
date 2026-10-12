cask "lf-dbviewer" do
  version "0.1.0"
  sha256 "7215168f75654662c77cd600bfc938072bd47f5e83f8e3b7b025b506a38f7bf7"

  url "https://github.com/alifu/LF-DBViewer/releases/download/#{version}/LF-DBViewer.zip"
  name "LF-DBViewer"
  desc "Light MySQL and MariaDB client with SSH tunnels, a table designer and a relationship diagram"
  homepage "https://github.com/alifu/LF-DBViewer"

  depends_on macos: ">= :monterey"

  app "LF-DBViewer.app"

  zap trash: [
    "~/Library/Application Support/com.alifu.lf-dbviewer",
    "~/Library/Caches/com.alifu.lf-dbviewer",
    "~/Library/WebKit/com.alifu.lf-dbviewer",
  ]
end
