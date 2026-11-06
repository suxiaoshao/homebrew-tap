cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.13"
  sha256 arm:   "fbf6328e1595f258b0ef7b74f2f3191d5c24e0b3e52d682e07d3a07c5d5fb553",
         intel: "608f5c67125d5facda10688274cb421a47c956af8cb0fd60399d2623858a2afc"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
