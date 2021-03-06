require 'rubygems'
require 'puppetlabs_spec_helper/module_spec_helper'

# Coveralls loading 
begin
  require 'simplecov'
  require 'coveralls'
  SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  SimpleCov.start do
    add_filter '/spec/'
  end
rescue Exception => e
  warn "Coveralls disabled"
end

Dir[File.join(File.dirname(__FILE__), 'support', '*.rb')].each do |support_file|
  require support_file
end