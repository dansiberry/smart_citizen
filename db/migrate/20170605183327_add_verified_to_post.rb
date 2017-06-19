class AddVerifiedToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :verified, :boolean, null: false, default: false
  end
end
