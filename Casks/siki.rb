cask "siki" do
  arch arm: "arm64", intel: "x64"

  version "0.28.1"
   sha256 arm: "51e12614a37850fa2a35fb8e914b987f11089fc28d79e29811670cd73393900e",
        intel: "b04f36add76097f6fd60f2f5a24a494b5c8528e17e4c1f8b76bef746e9b2d12a"

  url "https://sikiapp.net/archives/#{version}/Siki-darwin-#{arch}-#{version}.zip"
  name "siki"
  desc "5ch viewer"
  homepage "https://sikiapp.net/"

  livecheck do
    url "https://sikiapp.net/download/"
    regex(/<p>現在の最新バージョンは <code>([\d\.]+)<\/code> です<\/p>/)
  end

  depends_on macos: ">= :catalina"

  app "Siki-darwin-#{arch}/Siki.app"

  zap trash: "~/Library/Application Support/siki"
end
