cask "marktext" do
  version "0.17.1-custom"

  on_arm do
    sha256 "4d1007cb069bb243cfe10cd0f58f3772401a81ba8b55d008181048aca48d19eb"
    url "https://github.com/faisalmirza/marktext/releases/download/v#{version}/marktext-arm64.dmg"
  end

  on_intel do
    sha256 "094882139ec2a699e3c290d2650bdfc2c3d0a369eb51a5a83e8045ed1e68f149"
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
