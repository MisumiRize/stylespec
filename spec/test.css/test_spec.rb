require "spec_helper"

describe selector(".test") do
  it { should have_style :padding, "10px" }
  it { should have_style :margin, "10px" }
  it { should have_style :color, "#000000" }
end
