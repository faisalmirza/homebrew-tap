cask "f-md" do
  version "1.1.0"
  sha256 "06a676f88ffac7073e5e50fc963b86c1591defe5ba9b211b506d560e2a706b4c"

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
