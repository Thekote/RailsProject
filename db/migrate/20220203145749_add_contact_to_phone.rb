# frozen_string_literal: true

class AddContactToPhone < ActiveRecord::Migration[6.1]
  def change
    add_reference :phones, :contact, null: false, foreign_key: true
  end
end
