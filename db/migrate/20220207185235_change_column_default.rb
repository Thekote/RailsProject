class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :phones, :is_default, false
  end
end
