cask "alfred-emoji" do
  version "1.12.0"
  sha256 "6f985ad1aeae1d98c113bd020748a9f417b2dbf7963697116cb94c4ee8872013"

  url "https://github.com/jsumners/alfred-emoji/releases/download/v#{version}/alfred-emoji.alfredworkflow"
  appcast "https://github.com/jsumners/alfred-emoji/releases"
  name "alfred-emoji"
  desc "Alfred workflow for searching and copying emoji"
  homepage "https://github.com/jsumners/alfred-emoji"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end