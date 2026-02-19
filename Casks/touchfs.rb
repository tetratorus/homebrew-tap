cask "touchfs" do
  version "1.7.0"
  sha256 "636f6f9763e255648a7e4d1709be6418691ecca76e74a2dde9e66b0193bb2ffb"

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
