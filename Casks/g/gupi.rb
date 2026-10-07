cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "a7e1d8afe509805888e96a379f682f9ea23fde9da92052e2749b3bd7453e9ee0",
         intel: "2fb646777780b228bb60f72d818197efc459340c73c6f399ab74c1a24ac10aa4"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
