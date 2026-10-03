cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "c9f60c9305c535b0dc638c694428514014bcab2ca98b5dbd404e013eaab4b523",
         intel: "03df2cf128e330fd23b24a5a3fe0f7992a046190673b2ddc3c498173bef8abeb"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
