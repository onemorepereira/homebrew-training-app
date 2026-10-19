cask "training-app" do
  version "0.8.0-beta"
  sha256 "81ce603eb9473184a86239c46f79302eeff90fdbbbf89363dd0a2b589abd0f59"

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
