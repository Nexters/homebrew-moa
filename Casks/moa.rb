cask "moa" do
  version "0.8.0"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "f6b20dc752b00489fcd2a22e5d33dca2357852c9889eaca5740665c4ed11a334"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "68dcbe872e24f2299a988f5378ed0bfd0044c3064f19d2ba48dc6f202a4037e9"
  end

  name "Moa"
  desc "Real-time salary visualization menubar app"
  homepage "https://github.com/nexters/moa"

  app "moa.app"

  zap trash: [
    "~/Library/Application Support/moa",
    "~/Library/Caches/moa",
    "~/Library/Preferences/moa.plist",
  ]
end
