# frozen_string_literal: true

require_relative "lib/sorex/version"

Gem::Specification.new do |spec|
  spec.name          = "sorex"
  spec.version       = Sorex::VERSION
  spec.authors       = ["OKURA Masafumi"]
  spec.email         = ["masafumi.o1988@gmail.com"]

  spec.summary       = "Sorex is a highly pluggable documentation tool for Ruby."
  spec.description   = "Sorex is a highly pluggable documentation tool for Ruby."
  spec.homepage      = "https://github.com/okuramasafumi/sorex"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/okuramasafumi/sorex"
  # spec.metadata["changelog_uri"] = "https://github.com/okuramasafumi/sorex/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
