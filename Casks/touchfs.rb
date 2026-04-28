cask "touchfs" do
  version "1.18.0"
  sha256 "c19c4d6a02b0da012391967994353e6001c2585a633466905c12772b0892b9be"

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
