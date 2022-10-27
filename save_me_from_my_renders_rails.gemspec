require_relative "lib/save_me_from_my_renders_rails/version"

Gem::Specification.new do |spec|
  spec.name        = "save_me_from_my_renders_rails"
  spec.version     = SaveMeFromMyRendersRails::VERSION
  spec.authors     = ["Jasen LaBolle"]
  spec.email       = ["jasenlabolle@gmail.com"]
  spec.homepage    = "https://github.com/jlaboll/save-me-from-my-renders-rails"
  spec.summary     = "Saves you from repetitive logging from ActionView"
  spec.description = "Filters ActionView logging based on user configuration."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jlaboll/save-me-from-my-renders-rails"
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
