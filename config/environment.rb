# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Toptal::Application.initialize!

Sass::Plugin.options[:style] = :compressed
