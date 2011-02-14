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

end
