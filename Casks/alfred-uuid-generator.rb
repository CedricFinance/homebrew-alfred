cask "alfred-uuid-generator" do
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/packal/repository/raw/master/com.md.uuid/uuid_generator.alfredworkflow"
  name "alfred-uuid-generator"
  desc "Generates random UUID and copy to clipboard or paste to most front app"
  homepage "https://www.packal.org/workflow/uuid-generator-0"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end