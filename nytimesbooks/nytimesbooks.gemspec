
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nytimesbooks/version"

Gem::Specification.new do |spec|
  spec.name          = "nytimesbooks"
  spec.version       = Nytimesbooks::VERSION
  spec.authors       = ["'Alexandra Fren'"]
  spec.email         = ["'alexandra.fren@gmail.com'"]

  spec.summary       = %q{This gem pulls the bestseller lists from NYT. It has a CLI that allows users to drill down further through each list.}
  spec.description   = %q{This gem pulls the bestseller lists from NYT. It has a CLI that allows users to drill down further through each list, showing all of the books on each list and allowing users to select a book to see its description. The new version fixes the executable.}
  spec.homepage      = "https://github.com/alexandrafren/nytimesbooks-cli-app"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["nytimesbooks"]
  spec.require_paths = ["lib", "lib/nytimesbooks]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
end
