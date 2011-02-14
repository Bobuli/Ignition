class Month < Periode
	has_many :weeks
	
	
  def periode_names
    periodes = []
    self.weeks.each do |periode|
      periodes << periode.id
      periodes += periode.periode_names
    end
    periodes        
  end
	
	
end
