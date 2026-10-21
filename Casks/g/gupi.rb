cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8"
  sha256 arm:   "bb6a7dc4a1e387c560d3812d20052d9e5da967c29ae51f51a462a33e9be9fa07",
         intel: "1bd57236d8bf8c8235792ef669ccc5eb289b2cc08373820594a0ae39f542a917"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
