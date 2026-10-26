class Lfmclean < Formula
  desc "Interactive cleaner for Xcode, Android, Gradle and Kotlin caches"
  homepage "https://github.com/alifu/LF-MClean"
  url "https://github.com/alifu/LF-MClean/releases/download/v1.0.0/lfmclean-1.0.0-macos-universal.tar.gz"
  sha256 "f2a48a6446b492a95db9c62f9ff34f942f047516fe858deb2e791a27686723e5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lfmclean"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lfmclean --version")
  end
end
