cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.10"
  sha256 arm:   "68db2e77d1df268c3dfb580bd345e5d20a944102f96347ccbb366ebee2232194",
         intel: "02fac1cc982e71abd0b4574c635525840167bc1b03fb08594dc38306687c68b8"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
