cask "quip" do
  version "7.68.0"
  sha256 "6b1128a4d0bc41e08888faf6831ad7c65064727f112211a2b897604b73d849ae"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  livecheck do
    url "https://api.quip.com/-/sparkle-feed?manual=0"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Quip.app"

  zap trash: [
    "~/Library/Application Scripts/com.quip.Desktop.Quick-Look-Preview",
    "~/Library/Application Support/com.quip.Desktop",
    "~/Library/Caches/com.quip.Desktop",
    "~/Library/Containers/com.quip.Desktop.Quick-Look-Preview",
    "~/Library/Preferences/com.quip.Desktop.plist",
    "~/Library/WebKit/com.quip.Desktop",
  ]
end
