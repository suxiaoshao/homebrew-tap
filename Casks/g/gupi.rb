cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "95a8d378c1938e6645b6353fabe07ae1b7528770f84a1994f971fb8a5a1bc2e7",
         intel: "b730e644a505e49f847a2a1d31c2bc7bb08029d116c7f514ba21e4a210041076"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
