class ChangeFormatInComments < ActiveRecord::Migration[5.0]
  def change
    change_column :comments, :content, :text
  end
end
