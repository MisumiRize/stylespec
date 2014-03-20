require "stylespec"
require "pathname"

RSpec.configure do |c|
  include Stylespec::Helpers

  c.root = File.expand_path("../fixtures", __FILE__)

  c.before :all do
    block = self.class.metadata[:example_group_block]
    name  = File.basename(Pathname.new(block.source_location.first).dirname)
    if c.name != name
      c.name = name
    end
  end
end

