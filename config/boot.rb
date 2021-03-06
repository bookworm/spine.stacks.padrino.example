# Defines our constants
PADRINO_ENV  = ENV['PADRINO_ENV'] ||= ENV['RACK_ENV'] ||= 'development'  unless defined?(PADRINO_ENV)
PADRINO_ROOT = File.expand_path('../..', __FILE__) unless defined?(PADRINO_ROOT)

# Load our dependencies
require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
Bundler.require(:default, PADRINO_ENV)


##
# Add your before (RE)load hooks here
#
Padrino.before_load do
  env_vars = File.join(File.dirname(__FILE__), 'heroku_env.rb')
  load(env_vars) if File.exists?(env_vars)
end

##
# Add your after (RE)load hooks here
#
Padrino.after_load do
end

Padrino.load!
