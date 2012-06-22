class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :limit
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
