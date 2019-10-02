lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "freediving/version"

Gem::Specification.new do |spec|
  spec.name          = "freediving"
  spec.version       = Freediving::VERSION
  spec.authors       = ["Rsja12"]
  spec.email         = ["asocarras10@gmail.com"]

  spec.summary       = %q{gem about freediving disciplines}
  
  spec.homepage      = "http://www.github.com"
  spec.license       = "MIT"



  spec.metadata["homepage_uri"] = "https://github.com/Rsja12/freediving"
  spec.metadata["source_code_uri"] = "https://github.com/Rsja12/freediving"
  spec.metadata["changelog_uri"] = "https://github.com/Rsja12/freediving"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
