cask "cooviewer" do
  version "1.2b25"
  sha256 "b085124c540ce6e7cf2f8dbf1c2a0dc7ae47133d9afbc73357ac98ea168cf09e"

  url "https://github.com/coo-ona/cooViewer/releases/download/#{version}/cooViewer.zip"
  name "cooviewer"
  homepage "https://coo-ona.github.io/cooViewer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "cooViewer/cooViewer.app"

  zap trash: "~/Library/Preferences/jp.coo.cooViewer.plist"
end
