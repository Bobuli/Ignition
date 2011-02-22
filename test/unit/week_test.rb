require 'test_helper'

class WeekTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should be loaded" do
    week = Week.first
    assert_kind_of(Week, week)
    assert_equal(periodes(:KW01).name, week.name)
  end

  test "should have one day" do
    week = Week.create(:name => "KW 53");
    day = Day.create(:name => 'Dienstag');
    week.days << day
    assert_equal(week.days.size, 1)
  end
end
