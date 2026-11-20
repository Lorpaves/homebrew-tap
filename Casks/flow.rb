cask "flow" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4"
  sha256 arm:   "6caebc0741ed793e4d51355a6aa960ad6ccfa8e2913eadf4abe3682b74e0daf9",
         intel: "2110436690a53fba98ac8a4e46f5a5ccd7caa4d5a2c9d2644f19f764669cf721"

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
