cask "alfred-uuid-generator" do
  version "1.0.0"
  sha256 "a95734b0e0262b337f8cd55955bdbe6b8604884ecc70a6996a72dfeb923da203"

  url "https://github.com/packal/repository/raw/master/com.md.uuid/uuid_generator.alfredworkflow"
  name "alfred-uuid-generator"
  desc "Generates random UUID and copy to clipboard or paste to most front app"
  homepage "https://www.packal.org/workflow/uuid-generator-0"

  require_relative "../cmd/brew-alfred"
  artifact staged_path, target: "#{HOMEBREW_ALFRED_WORKFLOW_PREFIX}.#{token}"
end