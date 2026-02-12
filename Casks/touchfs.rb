cask "touchfs" do
  version "1.0.10"
  sha256 "342f29bedb5846afc620ed919bfa51406ae6f0b8ffed6bdec662bd9cea1dae6c"

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
