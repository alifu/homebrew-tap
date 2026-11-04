class Lfmclean < Formula
  desc "Interactive cleaner for Xcode, Android, Gradle and Kotlin caches"
  homepage "https://github.com/alifu/LF-MClean"
  url "https://github.com/alifu/LF-MClean/releases/download/v1.1.0/lfmclean-1.1.0-macos-universal.tar.gz"
  sha256 "87e349abbb0e54add80859767a3f22c8416bc383b19a33fdf1380febf91fa14a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lfmclean"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lfmclean --version")
  end
end
