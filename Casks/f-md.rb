cask "f-md" do
  version "1.2.0"
  sha256 "6a08171c045e4720c9718510920e51c61c46ef2040ddc3ad50525e4a6a3e6091"

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
