cask "vellum-md" do
  version "1.5.6"
  sha256 "da1012a34dab6eb2b9887f34c1ab1b45f58d0c022fe4fbbf954e56292219e811"

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
