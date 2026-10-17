cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.6"
  sha256 arm:   "45a536eed928133449da19c61d16491def07e377029ef1a67d124d31073c9b0f",
         intel: "2ae268d7af42c3f99d8d3559cf93e0b723dbb1de26149c015c5bbadd6ffec050"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
