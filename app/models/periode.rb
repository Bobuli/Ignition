class Periode < ActiveRecord::Base
	
  has_many :tasks, :order => :position
  belongs_to :plan
end
