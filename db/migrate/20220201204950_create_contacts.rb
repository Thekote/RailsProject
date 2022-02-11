# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.date :birthday

      t.timestamps
    end
  end
end
