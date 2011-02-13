class AddPeriodeIdColumnToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :periode_id, :integer
  end

  def self.down
    remove_column :tasks, :periode_id
  end
end
