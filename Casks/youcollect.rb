cask "youcollect" do
  version "1.0.2"
  sha256 "1951b0e96cca535b7f17fa6b355517db5eff8809d05e24e25df697d838dd0e53"

  url "https://github.com/faisalmirza/youcollect-electron/releases/download/v#{version}/YouCollect-#{version}-arm64.dmg"
  name "YouCollect"
  desc "YouTube downloader with AI-powered title suggestions and library management"
  homepage "https://github.com/faisalmirza/youcollect-electron"

  depends_on macos: ">= :monterey"

  app "YouCollect.app"

  zap trash: [
    "~/Library/Application Support/youcollect-electron",
    "~/Library/Preferences/com.youcollect.electron.plist",
    "~/Library/Saved Application State/com.youcollect.electron.savedState",
  ]
end
