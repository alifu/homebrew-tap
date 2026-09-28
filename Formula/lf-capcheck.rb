class LfCapcheck < Formula
  desc "Remaining usage limits of your AI subscriptions, in the terminal"
  homepage "https://github.com/alifu/LF-CapCheck"
  url "https://github.com/alifu/LF-CapCheck/releases/download/0.1.0/lf-capcheck-0.1.0.tar.gz"
  sha256 "5eb652b8426a85ed4f7683f1e64701ca3a33fd45783af37f21fb09f4ae298940"
  license "MIT"

  # One universal binary (Apple silicon + Intel), built for macOS 14 and later.
  depends_on macos: :sonoma

  def install
    bin.install "lf-capcheck"
    doc.install "LICENSE", "THIRD_PARTY_LICENSES"
  end

  def caveats
    <<~EOS
      To connect Claude, run `lf-capcheck` and choose Claude: it prints the exact
      `statusLine` snippet to paste into ~/.claude/settings.json. The snippet uses the
      stable path #{HOMEBREW_PREFIX}/bin/lf-capcheck, so it keeps working after `brew upgrade`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lf-capcheck --version")
    assert_match "statusline", shell_output("#{bin}/lf-capcheck --help")
    # An unknown option is a usage error (exit status 2) that explains itself on stderr.
    assert_match "unknown option", shell_output("#{bin}/lf-capcheck --bogus 2>&1", 2)
    # The menu only reads; with no input it ends after showing the main page.
    assert_match "AI usage limits", pipe_output(bin/"lf-capcheck", "q\n")
    # Both architectures are present in the one binary.
    assert_match "arm64", shell_output("lipo -archs #{bin}/lf-capcheck")
    assert_match "x86_64", shell_output("lipo -archs #{bin}/lf-capcheck")
    # The license notices travel with the binary.
    assert_path_exists doc/"LICENSE"
    assert_path_exists doc/"THIRD_PARTY_LICENSES"
    # Deliberately NOT tested: `statusline`, because it writes to the real user's data directory.
  end
end
