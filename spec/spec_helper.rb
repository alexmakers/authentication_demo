require 'sinatra'
require 'rspec'
require_relative '../app'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end