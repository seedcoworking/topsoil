class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.string :start_time
      t.string :end_time
      t.integer :plan_id

      t.timestamps
    end

    add_index :days, :plan_id
  end
end
