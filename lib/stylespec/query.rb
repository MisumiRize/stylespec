require "css_parser"

module Stylespec
  class Query
    attr_reader :expr

    def initialize(expr)
      @expr = expr
    end

    def exec
      path = File.expand_path(RSpec.configuration.name, RSpec.configuration.root || Dir::pwd)
      if @backend.nil?
        @backend = CssParser::Parser.new
        @backend.load_uri!("file://#{path}")
      end
      @backend.find_by_selector(@expr)
    end
  end
end
