cask "f-md" do
  version "1.0.0"
  sha256 "b2cff3daae91bd16423d637d364a4525ac25bc2151eda6c953f1ee4a8fd02381"

  url "https://github.com/faisalmirza/f-md/releases/download/v#{version}/F-MD-#{version}-macos.zip"
  name "F-MD"
  desc "Fast markdown viewer + editor"
  homepage "https://github.com/faisalmirza/f-md"

  depends_on macos: ">= :ventura"

  app "F-MD.app"

  zap trash: [
    "~/Library/Preferences/com.faisalmirza.efemde.plist",
    "~/Library/Saved Application State/com.faisalmirza.efemde.savedState",
  ]
end
