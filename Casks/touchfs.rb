cask "touchfs" do
  version "1.6.1"
  sha256 "f0661b0a1a80a1f3a9990b4f271211448160b45b033813a881380cdaf8de3fe3"

  url "https://github.com/tetratorus/touchfs/releases/download/v#{version}/touchfs.zip"
  name "touchfs"
  desc "Touch ID-gated encrypted files"
  homepage "https://github.com/tetratorus/touchfs"

  depends_on cask: "fuse-t"

  app "touchfs.app"

  binary "#{appdir}/touchfs.app/Contents/MacOS/touchfs"

  uninstall quit: "com.bluzuli.touchfs"

  zap trash: []
end
