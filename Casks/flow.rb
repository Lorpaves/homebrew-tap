cask "flow" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3"
  sha256 arm:   "c858025266efd8ad3cd17ec9c6322586b4f1704dbd6ca53846f3911eb58cfb20",
         intel: "7f4b18c829675e2aee83c1b73b2653d8fad61116d023a947cc2bf74d923d2ec2"

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
