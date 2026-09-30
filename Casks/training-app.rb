cask "training-app" do
  version "null"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/onemorepereira/training-app/releases/download/v#{version}/training-app_#{version}_aarch64.dmg"
  name "Training App"
  desc "A cycling training application"
  homepage "https://github.com/onemorepereira/training-app"

  app "training-app.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/training-app.app"]
  end

  caveats <<~EOS
    training-app is not signed with an Apple Developer certificate.
    If macOS blocks the app, reinstall with:
      brew reinstall --cask --no-quarantine training-app
  EOS
end
