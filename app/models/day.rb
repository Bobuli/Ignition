class Day < Periode
	 belongs_to :week
	 
	 def periode_names
	 	[self.id]
	 end
	 
	 
end
