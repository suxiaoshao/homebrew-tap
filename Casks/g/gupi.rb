cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.11"
  sha256 arm:   "e2a3ad0023873d32ffc5a2b370b22498a575e4d8e90f1e069d4823a04373049f",
         intel: "2564cf0f7e18495a2b4cb0cf255e3f54113af04c24fdae2c375bfdaf0a9e56dd"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
