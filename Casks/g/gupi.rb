cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.7"
  sha256 arm:   "48c69a0bcddf8abbf8b4693c933a77b9208d65341da268693bffbe0a90b4e2c9",
         intel: "2f25be2914ac1b11454ef937efe6b7e13655401a531b1422efea9a0c72e04ac0"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
