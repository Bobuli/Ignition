require 'test_helper'

class PeriodeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "has a task" do
    day = Day.create(:name => "Day1");
    task = PlanTask.create(:name => 'Plantask100');
    task2 = PlanTask.create(:name => 'Plantask101');
    day.tasks << task
    day.tasks << task2
    
    assert_equal(day.tasks.size, 2)
    assert day.tasks.include?(PlanTask.find_by_name('Plantask100'))    
  end
end
