cask "gupi" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "35215c97cbaf7b7fb3a3294cef220f50544be5700d229eae75afbd4fcac133ee",
         intel: "744b1dce836a80b31b415dee3156ea3230a3a2fd0703d9980588e7b8855803fc"

  url "https://github.com/suxiaoshao/gupi/releases/download/v#{version}/Gupi_#{version}_#{arch}_macos.dmg"
  name "Gupi"
  desc "Native desktop workspace for Pi"
  homepage "https://github.com/suxiaoshao/gupi"

  auto_updates true
  depends_on :macos

  app "Gupi.app"

  caveats "Install and configure the Pi coding agent separately before using Gupi."
end
