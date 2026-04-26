cask "touchfs" do
  version "1.15.0"
  sha256 "79ed04272ecca49f9b4d0c97ddc941cc5255752dab21a0a0fbab7e00ae25746d"

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
