class Week < Periode
	
	has_many :days
  	belongs_to :month
  	
  def periode_names
    self.days.map { |day| day.id }
  end  
  	
end
