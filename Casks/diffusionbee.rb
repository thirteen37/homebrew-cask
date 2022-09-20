cask "diffusionbee" do
  version "0.1.0"
  sha256 "1738f74cd243b94bb18bec4b8b1ea8e6b98896b2e0d873ac1024f78453c1ba0a"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-arm64.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui/"
  name "Diffusion Bee"
  desc "Stable Diffusion GUI App for M1 Mac"
  homepage "https://diffusionbee.com/"

  app "DiffusionBee.app"

  zap trash: "~/Library/Application Support/DiffusionBee"
end
