cask "vellum-md" do
  version "1.5.12"
  sha256 "bc7b2183d35dbb287d66a9a07752524b438e71d4bfcd8e0a20857fd30fffad89"

  url "https://github.com/faisalmirza/vellum/releases/download/v#{version}/Vellum-#{version}.zip"
  name "Vellum"
  desc "Fast markdown viewer for macOS"
  homepage "https://github.com/faisalmirza/vellum"

  depends_on macos: :ventura

  app "Vellum.app"

  zap trash: [
    "~/Library/Preferences/com.faisalmirza.vellum.plist",
    "~/Library/Saved Application State/com.faisalmirza.vellum.savedState",
  ]
end
