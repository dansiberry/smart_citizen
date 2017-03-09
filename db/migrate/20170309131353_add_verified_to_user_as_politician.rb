class AddVerifiedToUserAsPolitician < ActiveRecord::Migration[5.0]
  def change
    add_column :user_as_politicians, :verified, :boolean, null: false, default: false
  end
end
