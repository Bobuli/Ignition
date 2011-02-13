class Task < ActiveRecord::Base

  belongs_to :periode
  acts_as_list :scope => :periode


end
