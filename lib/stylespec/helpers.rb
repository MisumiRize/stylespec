module Stylespec
  module Helpers
    def selector(expr)
      Query.new(expr)
    end
  end
end
