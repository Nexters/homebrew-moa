cask "moa" do
  version "0.8.1"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "e8e2ac96fabf080a9abbd201f33cd8dd52524ccdc3188c04a40f6e6ba1d24858"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "187779d7ea628da6ce6df0feb777b04e52edf2c431e113e15e0d2b3fb04600c5"
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
