cask "fanzyzones" do
  version "0.1.0"
  sha256 "2559ee55d4af82e1dc5e2d304215799b510efdcc8987a8b4454cd17e89f3af52"

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
