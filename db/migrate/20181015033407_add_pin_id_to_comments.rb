class AddPinIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :pin_id, :integer
    add_index :comments, :pin_id
  end
end
