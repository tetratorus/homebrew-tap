cask "touchfs" do
  version "1.16.0"
  sha256 "e8447783a4caffad125f8e6f6ae9ff2b2a10fb373befa7352108f4e455474b47"

  url "https://github.com/tetratorus/touchfs/releases/download/v#{version}/touchfs-cli.zip"
  name "touchfs"
  desc "Touch ID-gated encrypted files"
  homepage "https://github.com/tetratorus/touchfs"

  depends_on cask: "fuse-t"

  app "touchfs-cli.app"

  binary "#{appdir}/touchfs-cli.app/Contents/MacOS/touchfs"

  uninstall quit: "com.bluzuli.touchfs"

  zap trash: []
end
