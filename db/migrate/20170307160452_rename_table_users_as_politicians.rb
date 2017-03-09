class RenameTableUsersAsPoliticians < ActiveRecord::Migration[5.0]


  def change
    rename_table :user_as_politicans, :user_as_politicians
  end


end
