cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "1ae1b0325bb827ca9d1b78c333720d3e2ab7398b690b64b0bfb72419159eaf8c",
         intel: "73df679548543efde700e7a535593259d9f8cce538973d3c2762b99bbfb512f0"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"
  auto_updates true

  depends_on macos: ">= :big_sur"

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
