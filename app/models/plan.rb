class Plan < Periode
	 has_many :periodes
	 
  def periode_names
    periodes = []
    self.periodes.each do |periode|
      periodes << periode.name
      periodes += periode.periode_names
    end
    periodes
  end

end
