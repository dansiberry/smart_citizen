class ChangeColumnElectedFalse < ActiveRecord::Migration[5.0]
  def change
    change_column :user_as_politicians, :elected, :boolean, null: false
  end
end
