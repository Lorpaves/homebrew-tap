cask "gloss" do
  version "1.0.2"
  sha256 "bc64ae798a65694986b4466d7ef0bab29907b7f555f18d6fbee3f06a5627bc3e"

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
