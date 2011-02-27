class Plan < Periode
	 has_many :periodes

   
  def periode_names
    periodes = []
    self.periodes.each do |periode|
      periodes << periode.id
      periodes += periode.periode_names
    end
    periodes
  end


  def all_plan_tasks_names
  	periodeIds = self.periode_names
  	tasks = []	
  	periodeIds.each do |periodeId|
  		tasks += Periode.find(periodeId).tasks.map { |task| task.name }
  	end
  	tasks  	
 end
 
  	
  def addInitialPeriodes
    
    @month = Month.new(:name => "Month1")
    @week = Week.create(:name => "Week1")
    @day1 = Day.create(:name => "Day1")
    @day2 = Day.create(:name => "Day2")
    
    @week.days << @day1
    @week.days << @day2
    @month.weeks << @week
    
    self.periodes << @month    
  end


end
