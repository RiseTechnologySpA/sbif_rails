require_relative 'lib/sbif_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "sbif_rails"
  spec.version       = SbifRails::VERSION
  spec.authors       = ["Paulo Tarud"]
  spec.email         = ["paulo@divisafe.com"]

  spec.summary       = %q{API Client for Chile SBIF}
  spec.description   = %q{API Client for Chile SBIF}
  spec.homepage      = "https://github.com/RiseTechnologySpA/sbif-rails"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/RiseTechnologySpA/sbif-rails"
  spec.metadata["changelog_uri"] = "https://github.com/RiseTechnologySpA/sbif-rails/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
end
