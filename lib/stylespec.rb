require "stylespec/version"
require "rspec"
require "stylespec/query"
require "stylespec/matchers"
require "stylespec/helpers"

RSpec.configure do |c|
  c.add_setting :name
  c.add_setting :root
end

module Stylespec
  # Your code goes here...
end
