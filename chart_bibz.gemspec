$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "chart_bibz/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "chart_bibz"
  spec.version     = ChartBibz::VERSION
  spec.authors     = ["Thomas HUMMEL"]
  spec.email       = ["thomas@hummel.link"]
  spec.homepage    = "TODO"
  spec.summary     = "ChartJs with ruby."
  spec.description = "ChartJs with ruby."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"
end
