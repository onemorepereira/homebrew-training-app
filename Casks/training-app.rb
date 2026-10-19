cask "training-app" do
  version "0.9.0-beta"
  sha256 "c6f63ec8767b04b74edde4e4e42fa1ab34c427108104d766e0f5865b74400229"

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
