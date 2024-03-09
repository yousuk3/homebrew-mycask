cask "siki" do
  arch arm: "-arm64", intel: "-x64"

  version "0.28.0"
   sha256 arm:   "81b5d1a1fa8a33a00c5d43c140664572f7a83e0b1d86418a8c2f5aa7ea4901ba",
         intel: "1e4fe7c65f4ba4b0abd311b7ebb325f63d15f480f00d3c0970f4e22cb99085c0"

  url "https://sikiapp.net/archives/#{version}/Siki-darwin#{arch}-#{version}.zip"
  name "siki"
  desc "Multi-platform browser for bulletin board websites"
  homepage "https://sikiapp.net/"

  livecheck do
    url "https://sikiapp.net/download/"
    regex(/href=.*?Siki-darwin-x64-(\d+\.\d+\.\d+).zip/)
  end

  depends_on macos: ">= :catalina"

  app "Siki-darwin#{arch}/Siki.app"

  zap trash: "~/Library/Application Support/siki"
end
