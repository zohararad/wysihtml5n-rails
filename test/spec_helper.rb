# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

FileUtils.mkdir_p File.expand_path("../dummy/tmp/cache/assets",  __FILE__)

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require 'minitest/spec'
require 'minitest/autorun'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

