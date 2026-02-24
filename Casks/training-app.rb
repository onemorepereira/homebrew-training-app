cask "training-app" do
  version "0.7.2-beta"
  sha256 "573d70e346bf0719059606d7958a278e8459e4a0ac0f824b98e128752d646eee"

  url "https://github.com/onemorepereira/training-app/releases/download/v#{version}/training-app_#{version}_aarch64.dmg"
  name "Training App"
  desc "A cycling training application"
  homepage "https://github.com/onemorepereira/training-app"

  app "training-app.app"
end
