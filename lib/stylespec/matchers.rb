RSpec::Matchers.define :have_style do |attr, value|
  match do |subject|
    !subject.exec.join.split(";").map { |e| e.strip }.grep(Regexp.new("^#{attr}:")).grep(Regexp.new(value)).empty?
  end

  failure_message_for_should do |actual|
    "expected that #{actual.expr} would have style #{attr}: #{value}"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual.expr} would not have style #{attr}: #{value}"
  end
end
