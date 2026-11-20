cask "tokens-are-running-out" do
  version "0.1.0"
  sha256 "c9a0f90b5fc0436704ecfd5e7c7a9190cfcb095af1823d6903f563c2841bc02e"

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
