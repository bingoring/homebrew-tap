cask "tokens-are-running-out" do
  version "0.2.0"
  sha256 "80d7e8d0ae26f441e9a8de4543fe701fd11a2e66d0197546ff334799acb26fdf"

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
