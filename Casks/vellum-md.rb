cask "vellum-md" do
  version "1.5.9"
  sha256 "f36fd16d1a46db3e22bd6e881fbf1632d8b2c8213070bcc07d72be93991b4bbd"

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
