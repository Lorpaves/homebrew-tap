cask "gloss" do
  version "1.0"
  sha256 "ccc42090a6bd7a52dc8c8884c3df3bdb5c8bf8d04e631f4daff39d1b2dd1955a"

  url "https://github.com/lorpaves/gloss/releases/download/v#{version}/Gloss-#{version}.dmg"
  name "Gloss"
  desc "On-device selection translation in the menu bar"
  homepage "https://gloss.lorpaves.com/"

  livecheck do
    url "https://gloss.lorpaves.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Gloss.app"

  zap trash: [
    "~/Library/Application Support/Gloss",
    "~/Library/Caches/com.lorpaves.Gloss",
    "~/Library/HTTPStorages/com.lorpaves.Gloss",
    "~/Library/Preferences/com.lorpaves.Gloss.plist",
  ]
end
