cask "alfred-search-unicode" do
  version "1.1.0"
  sha256 "e4d1a376843afbe456b01eeca9873ea2aa716a90afcf83be4d02bc2c2de759a1"

  url "https://github.com/blueset/alfred-search-unicode/releases/download/v#{version}/Search.Unicode.alfredworkflow"
  appcast "https://github.com/blueset/alfred-search-unicode/releases"
  name "alfred-search-unicode"
  desc "Search Unicode is an Alfred 4 Workflow to lookup and reverse lookup Unicode characters and emoji with their names."
  homepage "https://github.com/blueset/alfred-search-unicode"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end