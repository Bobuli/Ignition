require 'test_helper'

class MonthTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should be loaded" do
    month = Month.first
    assert_kind_of(Month, month)
    assert_equal(periodes(:Januar).name, month.name)
  end

  test "should have one week" do
    month = Month.create(:name => "Februar");
    week = Week.create(:name => 'KW01');
    month.weeks << week
    assert_equal(month.weeks.size, 1)
  end  

end
