class AddPlanReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :plan_id, :integer
    add_index :users, :plan_id
  end
end
