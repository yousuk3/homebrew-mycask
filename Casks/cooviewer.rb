cask "cooviewer" do
  version "1.2b25"
  sha256 "b085124c540ce6e7cf2f8dbf1c2a0dc7ae47133d9afbc73357ac98ea168cf09e"

  url "https://github.com/coo-ona/cooViewer/releases/download/#{version}/cooViewer.zip",
      verified: "github.com/coo-ona/cooViewer/"
  name "cooviewer"
  desc "simple comic viewer for Mac"
  homepage "https://coo-ona.github.io/cooViewer/"

  livecheck do
    url :url
    regex(/^(\d+(?:\.\d+)+[a-z]?\d*)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  app "cooViewer/cooViewer.app"

  zap trash: "~/Library/Preferences/jp.coo.cooViewer.plist"
end
