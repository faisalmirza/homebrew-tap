cask "vellum-md" do
  version "1.5.0"
  sha256 "6248641f211a7089341006ee87853b5bb6f1cca3fa483ba8fe7c29b109ad29ac"

  url "https://github.com/faisalmirza/vellum/releases/download/v#{version}/Vellum-#{version}.zip"
  name "Vellum"
  desc "Fast markdown viewer for macOS"
  homepage "https://github.com/faisalmirza/vellum"

  depends_on macos: ">= :ventura"

  app "Vellum.app"

  zap trash: [
    "~/Library/Preferences/com.faisalmirza.efemde.plist",
    "~/Library/Saved Application State/com.faisalmirza.efemde.savedState",
  ]
end
