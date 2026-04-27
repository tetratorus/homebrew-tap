cask "touchfs" do
  version "1.17.0"
  sha256 "920be6ec38ddca18c9c286886360ded4b35e5720d4f5cbb4779f06020061c140"

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
