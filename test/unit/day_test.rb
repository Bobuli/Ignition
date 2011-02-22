require 'test_helper'

class DayTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  test "should be loaded" do
    day = Day.first
    assert_kind_of(Day, day)
    assert_equal(periodes(:Montag).name, day.name)
  end
  
end
