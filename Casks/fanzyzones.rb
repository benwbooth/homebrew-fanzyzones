cask "fanzyzones" do
  version "0.1.1"
  sha256 "6a592f408fdc80d86b8e3df874de7b76232b3d245c063efd90e9c6fff241dada"

  url "https://github.com/benwbooth/fanzyzones/releases/download/v#{version}/FanzyZones.dmg"
  name "FanzyZones"
  desc "Native FancyZones-style window-zone snapping for macOS"
  homepage "https://github.com/benwbooth/fanzyzones"

  depends_on macos: :sonoma

  app "FanzyZones.app"

  zap trash: "~/Library/Application Support/FanzyZones"

  caveats <<~EOS
    FanzyZones is signed but not notarized. On first launch, right-click the app
    and choose Open (or allow it in System Settings > Privacy & Security).

    It needs Accessibility permission to move windows:
      System Settings > Privacy & Security > Accessibility > enable FanzyZones.
  EOS
end
