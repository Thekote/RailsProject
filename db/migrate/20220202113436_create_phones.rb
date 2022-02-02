class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number, null: false
      t.string :label, null: false
      t.boolean :is_default, null: false

      t.timestamps
    end
  end
end
