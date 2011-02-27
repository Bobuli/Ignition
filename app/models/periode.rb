class Periode < ActiveRecord::Base
	
  has_many :tasks, :order => :position
  belongs_to :plan
  
  
    def periode_taskIds
  	periodeIds = self.periode_names
  	tasks = []	
  	periodeIds.each do |periodeId|
  		tasks += Periode.find(periodeId).tasks
  	end
  	tasks  	
  end
 
  def periode_tasks_names
    tasks = []  
    tasks += self.tasks.map { |task| task.name }
    tasks   
  end
  
  
end
