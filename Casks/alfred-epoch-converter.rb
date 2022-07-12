cask "alfred-epoch-converter" do
  version "1.0.3"
  sha256 "8b9db56ff7fd13112764f4b4d68d62fd1d8b7b12cecc271b5c215b62728fd661"

  url "https://github.com/snooze92/alfred-epoch-converter/releases/download/#{version}/epoch-converter-#{version.tr(".", "_")}.alfredworkflow"
  appcast "https://github.com/snooze92/alfred-epoch-converter/releases"
  name "alfred-epoch-converter"
  desc "Makes it easy to work with epoch timestamps!"
  homepage "https://github.com/snooze92/alfred-epoch-converter"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end