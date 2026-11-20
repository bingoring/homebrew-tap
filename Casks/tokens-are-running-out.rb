cask "tokens-are-running-out" do
  version "0.1.1"
  sha256 "9ec2467f6d9f5d3aebe73c8dc20f48f066668df2ac2a1a2c648adc6f068181ba"

  url "https://github.com/bingoring/tokens-are-running-out/releases/download/v#{version}/TokensAreRunningOut-#{version}.zip"
  name "Tokens Are Running Out"
  desc "Menu bar app that shows why Claude Code usage drained"
  homepage "https://github.com/bingoring/tokens-are-running-out"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TokensAreRunningOut.app"

  uninstall quit: "io.github.bingoring.TokensAreRunningOut"

  zap trash: [
    "~/Library/Application Support/TokensAreRunningOut",
    "~/Library/Preferences/io.github.bingoring.TokensAreRunningOut.plist",
  ]
end
