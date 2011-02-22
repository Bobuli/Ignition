require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should be loaded" do
    plan = Plan.first
    assert_kind_of(Plan, plan)
    assert_equal(periodes(:Plan1).name, plan.name)
  end


  test "should have one day" do
    plan = Plan.create(:name => "Neuer Plan")
    periode = Day.create(:name => 'Montag')
    plan.periodes << periode
    assert_equal(plan.periodes.size, 1)
    assert_equal(plan.periodes.first, periode)
  end

  
end
