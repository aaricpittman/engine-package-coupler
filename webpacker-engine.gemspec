require_relative 'lib/webpacker/engine/version'

Gem::Specification.new do |spec|
  spec.name          = "webpacker-engine"
  spec.version       = Webpacker::Engine::VERSION
  spec.authors       = ["Aaric Pittman"]
  spec.email         = ["aaricpittman@gmail.com"]

  spec.summary       = %q{Simplifies supporting webpacker in Rails Engines.}
  spec.homepage      = "https://github.com/aaricpittman/webpacker-engine"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aaricpittman/webpacker-engine"
  spec.metadata["changelog_uri"] = "https://github.com/aaricpittman/webpacker-engine/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
