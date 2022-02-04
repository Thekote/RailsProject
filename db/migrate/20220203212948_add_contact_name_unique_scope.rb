class AddContactNameUniqueScope < ActiveRecord::Migration[6.1]
  def change
    add_index :contacts, [:user_id, :name], unique: true
  end
end
