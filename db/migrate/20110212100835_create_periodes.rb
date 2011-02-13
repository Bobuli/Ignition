class CreatePeriodes < ActiveRecord::Migration
  def self.up
    create_table :periodes do |t|
      t.string :name
      t.string :type
      t.date :startdate
      t.integer :plan_id
      t.integer :week_id
      t.integer :month_id

      t.timestamps
    end
  end

  def self.down
    drop_table :periodes
  end
end
