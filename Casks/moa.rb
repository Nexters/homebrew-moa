cask "moa" do
  version "0.3.1"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "PLACEHOLDER"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "PLACEHOLDER"
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