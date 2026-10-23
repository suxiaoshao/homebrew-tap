cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "8332038564d26b10559d5df2e35904af608e45b59372fde3ba3f651aa16070e1",
         intel: "fbca8bfbd9d5a4c8a674a619da16f567f847d812214e01d2ef9c0112c3e28377"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
