cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "b65e4da3302d3473656b0c4728ab29a37cec5328681e0c3e9eb2644da44265e9",
         intel: "863bc8ec182964c6cd2d3d56530bd3b92b0e7cf63efa552c877f90c9c5eed9d6"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
