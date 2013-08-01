$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_localized_wysihtml5/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_localized_wysihtml5"
  s.version     = RailsAdminLocalizedWysihtml5::VERSION
  s.authors     = ["Gio"]
  s.email       = ["g.lion@83bits.com"]
  s.homepage    = "https://github.com/venetanji/rails_admin_localized_wysihtml5"
  s.summary     = "Rails admin support for whysiyhtml5 fields using mongoid localized fields"
  s.description = "Adds to RailsAdmin support for whysihml5 mongoid localized fields"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  
  s.add_dependency "rails_admin"
  s.add_dependency "mongoid"
  s.add_dependency "bootstrap-wysihtml5-rails"
  s.add_dependency "rails", "~> 4.0.0"
end
