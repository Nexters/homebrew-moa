cask "moa" do
  version "0.10.0"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "04ce500c171389d874f5c21c7ffcefe6bc7511ea8cd4efc0d02d418425030845"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "9cd9190ca6aadd34e9bbff7ba6b8bf9dbb0aa0e4f9a5a6f8e14bc5fde2f37f42"
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
