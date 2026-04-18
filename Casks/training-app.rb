cask "training-app" do
  version "null"
  sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"

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
