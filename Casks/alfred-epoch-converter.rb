cask "alfred-epoch-converter" do
  version "1.0.3"
  sha256 "19ff4a7820491073ca4786c997a23199b6343123d4720904f4c57dfd99ff4f00"

  url "https://github.com/snooze92/alfred-epoch-converter/releases/download/#{version}/epoch-converter-#{version.tr(".", "_")}.alfredworkflow"
  livecheck do
    url "https://github.com/snooze92/alfred-epoch-converter/releases"
  end
  name "alfred-epoch-converter"
  desc "Makes it easy to work with epoch timestamps!"
  homepage "https://github.com/snooze92/alfred-epoch-converter"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end