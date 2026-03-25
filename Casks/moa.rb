cask "moa" do
  version "1.0.2"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "65d8e82606ff8a70f9bec1a7618c58c3b44c7f800b3db1868273e33b54a0bbec"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "65bba2ec6d9471d70c01c9c8ca264c59140ee08e5bdcc5e42d48f1d2f8bb3abb"
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
