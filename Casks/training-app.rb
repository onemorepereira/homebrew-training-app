cask "training-app" do
  version "0.7.3-beta"
  sha256 "bea5a84284433c4a561264ff47e1aae0b1e01c37ce58127d9f91f6174d8a7c3c"

  url "https://github.com/onemorepereira/training-app/releases/download/v#{version}/training-app_#{version}_aarch64.dmg"
  name "Training App"
  desc "A cycling training application"
  homepage "https://github.com/onemorepereira/training-app"

  app "training-app.app"
end
