cask "marktext" do
  version "0.17.1-custom"

  on_arm do
    sha256 "16ce2d40917f8e27f9ce8debf5d0db40e879c915ef7d76317350a2faa0b1737c"
    url "https://github.com/faisalmirza/marktext/releases/download/v#{version}/marktext-arm64.dmg"
  end

  on_intel do
    sha256 "1807f7a4184ef2805cbc4416d2252519a64eeb2ec19bbcaf1ee1b12bcb676357"
    url "https://github.com/faisalmirza/marktext/releases/download/v#{version}/marktext-x64.dmg"
  end

  name "MarkText"
  desc "Simple and elegant open-source markdown editor"
  homepage "https://github.com/faisalmirza/marktext"

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Logs/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
  ]
end
