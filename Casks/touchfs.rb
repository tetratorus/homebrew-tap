cask "touchfs" do
  version "1.0.5"
  sha256 "2203c26e87253131b626d10334a4140980cfa6a1acd4f0eac1632d3f73db39ff"

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
