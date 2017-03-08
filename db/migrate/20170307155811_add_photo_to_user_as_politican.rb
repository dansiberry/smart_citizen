class AddPhotoToUserAsPolitican < ActiveRecord::Migration[5.0]
  def change
    add_column :user_as_politicans, :photo, :string
  end
end
