cask "moa" do
  version "1.0.0"

  on_arm do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_aarch64.dmg"
    sha256 "b64407dfbee557d29281e17542e01b6c5f079a2f1bc4a59d881476de1dbe65b2"
  end

  on_intel do
    url "https://github.com/nexters/moa/releases/download/v#{version}/moa_#{version}_x64.dmg"
    sha256 "4d1a6ebacd5a87b94d77dbaec61958360b491a61104f94acaaa651217852d5f2"
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
