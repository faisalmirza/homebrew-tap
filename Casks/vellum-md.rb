cask "vellum-md" do
  version "1.5.3"
  sha256 "ba3be5ccab34e8e82f190b95b86cf49fb09ddf83b206cb905de755bc7ea096a5"

  url "https://github.com/faisalmirza/vellum/releases/download/v#{version}/Vellum-#{version}.zip"
  name "Vellum"
  desc "Fast markdown viewer for macOS"
  homepage "https://github.com/faisalmirza/vellum"

  depends_on macos: ">= :ventura"

  app "Vellum.app"

  zap trash: [
    "~/Library/Preferences/com.faisalmirza.vellum.plist",
    "~/Library/Saved Application State/com.faisalmirza.vellum.savedState",
  ]
end
