cask "stackroom" do
  version :latest
  sha256 :no_check

  url "https://ul.h3z.jp/C1hLKjyF.7z",
      verified: "ul.h3z.jp/"
  name "stackroom"
  desc "Comic file manager"
  homepage "https://aromaticsapp.blogspot.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on formula: "p7zip"

  app "Stackroom.app"

  zap trash: "~/Library/Preferences/jp.aromatics.Stackroom.plist"
end
