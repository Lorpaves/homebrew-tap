cask "gloss" do
  version "1.0.1"
  sha256 "bc73105c5d5eb509de4b905b64a6619c8243954709151bb8727f2f6b96cc7330"

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
