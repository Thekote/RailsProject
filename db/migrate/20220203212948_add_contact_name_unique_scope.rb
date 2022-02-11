# frozen_string_literal: true

class AddContactNameUniqueScope < ActiveRecord::Migration[6.1]
  def change
    add_index :contacts, %i[user_id name], unique: true
  end
end
