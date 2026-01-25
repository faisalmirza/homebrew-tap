cask "vellum-md" do
  version "1.5.4"
  sha256 "1092f1c478e76e55a48ccc6a4fdc9a6c89594cba7b7ac0c8dfcf307d3ea59923"

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
