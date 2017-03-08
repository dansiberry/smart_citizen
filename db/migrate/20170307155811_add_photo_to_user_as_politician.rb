class AddPhotoToUserAsPolitician < ActiveRecord::Migration[5.0]
  def change
    add_column :user_as_politicians, :photo, :string
  end
end
