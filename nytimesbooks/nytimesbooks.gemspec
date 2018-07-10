
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nytimesbooks/version"

Gem::Specification.new do |spec|
  spec.name          = "nytimesbooks"
  spec.version       = Nytimesbooks::VERSION
  spec.authors       = ["'Alexandra Fren'"]
  spec.email         = ["'alexandra.fren@gmail.com'"]

  spec.summary       = %q{This gem pulls the bestseller lists from NYT. It has a CLI that allows users to drill down further through each list.}
  spec.description   = %q{This gem pulls the bestseller lists from NYT. It has a CLI that allows users to drill down further through each list, showing all of the books on each list and allowing users to select a book to see its description.}
  spec.homepage      = "https://github.com/alexandrafren/nytimesbooks-cli-app"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
