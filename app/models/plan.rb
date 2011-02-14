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

  def plan_tasks_names
  	periodeIds = self.periode_names
  	tasks = []	
  	periodeIds.each do |periodeId|
  		tasks += Periode.find(periodeId).tasks.map { |task| task.name }
  	end
  	tasks  	
  end
  	
  		


end
