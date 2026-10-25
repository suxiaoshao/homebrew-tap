cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.12"
  sha256 arm:   "01105a52294ee5e4ba7bfb7dd49cd312be59e9d01a90680db46f80905809de88",
         intel: "3b025d752127b67c38b37a8f4bae82f7aa68d090c7ed2835fd495b506d2755b1"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
