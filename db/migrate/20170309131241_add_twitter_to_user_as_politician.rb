class AddTwitterToUserAsPolitician < ActiveRecord::Migration[5.0]
  def change
    add_column :user_as_politicians, :twitter_handle, :string
  end
end
