cask "flow" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "a83815aed14890b8d0cccd26bbc45bac2c7206675872ec44c1d1f277fd407320",
         intel: "b9e986200e5cb46c7a475aa216a706cbc2711b1e32ba5ac2db5e5f045945c859"

  url "https://github.com/Lorpaves/flow/releases/download/v#{version}/flow-#{version}-#{arch}.dmg"
  name "Flow"
  desc "Personal offline project management app"
  homepage "https://github.com/Lorpaves/flow"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Flow.app"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Caches/com.lorpaves.flow",
    "~/Library/Preferences/com.lorpaves.flow.plist",
  ]
end
