class AddDescriptionToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :description, :text
  end
end
