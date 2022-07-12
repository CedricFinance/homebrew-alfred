cask "alfred-caffeinate" do
  version "1.0.0"
  sha256 "148696a95241ce6e39ac4a615cfd077d7d1f96945f793128b227288079d7c364"

  url "https://github.com/shawnrice/alfred-2-caffeinate-workflow/raw/master/Caffeinate%20Control.alfredworkflow"
  appcast "https://github.com/shawnrice/alfred-2-caffeinate-workflow/releases"
  name "alfred-caffeinate"
  desc "An Alfred2 workflow to control the system caffeinate utility (prevents sleep)."
  homepage "https://github.com/shawnrice/alfred-2-caffeinate-workflow"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end