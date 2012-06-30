$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wysihtml5n/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wysihtml5n-rails"
  s.version     = Wysihtml5n::Rails::VERSION
  s.authors     = ["Zohar Arad"]
  s.email       = ["zohar@zohararad.com"]
  s.homepage    = "https://github.com/zohararad/wysihtml5n-rails"
  s.summary     = "WYSIHTML5-Enhanced Rich Text editor, converted to SASS and Rails asset pipeline"
  s.description = "WYSIHTML5-Enhanced is an HTML5 rich text editor based on wysihtml5, with support for image drag & drop and UI powered by Twitter Bootstrap"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1"
  s.add_dependency "sass-rails", "~> 3.1"
  s.add_development_dependency 'rake', "~> 0.9.2"
end
