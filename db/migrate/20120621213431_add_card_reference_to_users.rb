class AddCardReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :card_id, :integer
    add_index :users, :card_id
  end
end
